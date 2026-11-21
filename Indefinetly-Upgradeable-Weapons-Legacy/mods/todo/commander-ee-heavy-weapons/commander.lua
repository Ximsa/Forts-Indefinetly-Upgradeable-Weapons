dofile("scripts/forts.lua")

Faction = ""
StringGroup = "HeavyWeapons"

DescPassive =
{
	"BigAimingArc",
	"ReducedReload",
	"ReducedReloadMortar",
	"BigAimingArcHowitzer",
	"ReducedReloadHowitzer",
	"ShotgunAntiAir",
	"ThrustIncrease",
}

DescActive =
{
	"IncreasedDirectDamage",
	"IncreasedSplashRadius",
	"IncreasedDirectDamageHowitzer",
	"IncreasedSplashRadiusHowitzer",
	"SecondChanceShot",
}

GaugeDamageHitpoints = 3150
GaugeAttackHitpoints = 9000

WeaponsToMark =
{
	"laser",
	"cannon",
	"missile2",
	"missile2inv",
	"howitzer",
}

WeaponsWithSecondChance =
{
	"laser",
	"cannon",
	"missile2",
	"missile2inv",
	"howitzer",
}

data.isActive = false

function ResetTables()
	data.FirstChanceProjectile = {}
	data.FirstChanceBeam = {}
	data.SecondChanceUsed = {}
	data.SecondChanceIcon = {}
end

ResetTables()

function Load(gameStart)
	data.enemyTeamId = 3 - teamId
end

CommanderApplyModBase = function()
	for k,v in ipairs(WeaponsToMark) do
		AddDeviceNodeEffect(teamId, v, "Root", path .. "/effects/damage_icon.lua", false)
	end
end
RegisterApplyMod(CommanderApplyModBase)

function OnActivation(active)
	data.isActive = active

	if active then
		for weaponId, effectId in pairs(data.SecondChanceIcon) do
			SecondChanceEndEffect(weaponId)
		end

		ResetTables()
	end

	if GetLocalTeamId()%MAX_SIDES == teamId then
		for k,v in ipairs(WeaponsToMark) do
			ConfigureDeviceNodeEffect(teamId, v, "Root", active, false)
		end
	end
end

function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)
	if GetLocalTeamId()%MAX_SIDES == teamId and (oldTeamId%MAX_SIDES == teamId or newTeamId%MAX_SIDES == teamId) then
		if TrackingType(saveName, WeaponsToMark) then
			ConfigureDeviceNodeEffect(newTeamId, saveName, "Root", data.isActive and newTeamId%MAX_SIDES == teamId, false)
		end
	end
end

function OnDeviceCompleted(deviceTeamId, deviceId, saveName)
	OnDeviceTeamUpdated(0, deviceTeamId, deviceId, saveName)
end

function OnWeaponFired(weaponTeamId, saveName, weaponId, projectileNodeId)
	--Log("OnWeaponFired " .. weaponTeamId .. " name " .. saveName .. " weapon " .. weaponId)

	if data.SecondChanceIcon[weaponId] then
		SecondChanceEndEffect(weaponId)
	end

	-- handle projectile transformations (e.g. intersection with firebeam, detonation)
	if weaponId < 0 then
		for pid,wid in pairs(data.FirstChanceProjectile) do
			if wid == -weaponId then
				--Log("Transformation detected " .. pid .. " -> " .. projectileNodeId)
				data.FirstChanceProjectile[pid] = nil
				data.FirstChanceProjectile[projectileNodeId] = wid
				return
			end
		end
	end

	if data.isActive and weaponTeamId%MAX_SIDES == teamId and TrackingType(saveName, WeaponsWithSecondChance) and not data.SecondChanceUsed[weaponId] then
		if IsDeviceTypeBeam(saveName, weaponTeamId) then
			data.FirstChanceBeam[weaponId] = true
		else
			data.FirstChanceProjectile[projectileNodeId] = weaponId
		end
	end
end

function OnWeaponFiredEnd(weaponTeamId, saveName, weaponId)
	if data.FirstChanceBeam[weaponId] then
		local enemyBeamDamage = GetWeaponBeamDamage(weaponId, data.enemyTeamId)
		if enemyBeamDamage == 0 then
			SecondChance(weaponId)
		end
		data.FirstChanceBeam[weaponId] = nil
		data.SecondChanceUsed[weaponId] = true
	end
end

function OnDeviceHit(deviceTeamId, deviceId, saveName, newHealth, projectileNodeId, projectileTeamId, pos)
	if data.FirstChanceProjectile[projectileNodeId] and deviceTeamId%MAX_SIDES == data.enemyTeamId then
		SecondChanceLost(projectileNodeId)
	end
end

function OnLinkHit(nodeIdA, nodeIdB, sourceId, sourceTeamId, sourceSaveName, damage, pos)
	if data.FirstChanceProjectile[sourceId] and NodeTeam(nodeIdA)%MAX_SIDES == data.enemyTeamId then
		SecondChanceLost(sourceId)
	end
end

function OnProjectileDestroyed(projectileNodeId, weaponTeamId, saveName, structureIdHit)
	if data.FirstChanceProjectile[projectileNodeId] then
		local weaponId = SecondChanceLost(projectileNodeId)

		local sideIdHit = None
		if structureIdHit then
			sideIdHit = GetStructureTeam(structureIdHit)%MAX_SIDES
		end

		if sideIdHit ~= data.enemyTeamId then
			SecondChance(weaponId)
		end
	end
end

function SecondChanceLost(projectileNodeId)
	local weaponId = data.FirstChanceProjectile[projectileNodeId]
	data.FirstChanceProjectile[projectileNodeId] = nil
	data.SecondChanceUsed[weaponId] = true

	return weaponId
end

function SecondChance(weaponId)
	-- reload weapon instantly
	ReloadWeapon(weaponId)
	if GetLocalTeamId()%MAX_SIDES == teamId then
		local pos = GetDeviceComponentPosition(weaponId, "Icon")
		data.SecondChanceIcon[weaponId] = SpawnEffect(path .. "/effects/second_chance_icon.lua", pos)
	end
end

function SecondChanceEndEffect(weaponId)
	CancelEffect(data.SecondChanceIcon[weaponId])
	data.SecondChanceIcon[weaponId] = nil

	if GetLocalTeamId()%MAX_SIDES == teamId then
		local pos = GetDeviceComponentPosition(weaponId, "Icon")
		SpawnEffect("effects/commander_highlight_outro.lua", pos)
	end
end

function OnUpdate(timeDelta)
	for weaponId, effectId in pairs(data.SecondChanceIcon) do
		if DeviceExists(weaponId) then
			local pos = GetDeviceComponentPosition(weaponId, "Icon")
			SetEffectPosition(effectId, pos)
			AddToEffectLifeSpan(effectId, timeDelta)
		else
			CancelEffect(effectId)
			data.SecondChanceIcon[weaponId] = nil
		end
	end
end
