dofile("scripts/forts.lua")

Faction = "Russia"
StringGroup = "Spy"

DescPassive =
{
	"SeeResources",
	"SeeDevice",
	"SeeReactor",
	"SeeCommander",
}

DescActive =
{
	"SeeInside",
	"StealResources",
}

GaugeDamageHitpoints = 2250
GaugeAttackHitpoints = 7200
CommanderActivationDuration = 20

function DiscoverTeams(sideId)
	local teamFound = {}
	local teams = {}
	local count = GetDeviceCountSide(sideId)
	for i = 0, count - 1 do
		local id = GetDeviceIdSide(sideId, i)
		local currTeam = GetDeviceTeamIdActual(id)
		if not teamFound[currTeam] and GetDeviceType(id) == "reactor" then
			teamFound[currTeam] = true
			table.insert(teams, currTeam)
		end
	end
	return teams
end

CommanderApplyModBase = function()
	SetButtonCallback("ResourcePanelEnemy", "SpyNext", 0)
	SetControlTextW("ResourcePanelEnemy", "LastDevice", L"")

	data.enemySideId = 1
	if teamId%MAX_SIDES == 1 then
		data.enemySideId = 2
	end
end
RegisterApplyMod(CommanderApplyModBase)

function Update()
	local localTeamId = GetLocalTeamId()
	if not data.teamIndex and teamId%MAX_SIDES == localTeamId%MAX_SIDES then
		local teams = DiscoverTeams(data.enemySideId)
		data.teamIndex = 1
		if #teams > 0 then
			data.currentTeam = teams[data.teamIndex]
			--Log("Spy init target, looking at " .. tostring(data.currentTeam))
			ConfigureDeviceNodeEffect(data.currentTeam, "reactor", "Core", true, true, false)
			SetInspectedEnemyTeamId(data.currentTeam)
		end
	end
end

function OnActivation(active)
	--Log("Spy OnActivation " .. tostring(active))

	local localTeamId = GetLocalTeamId()
	local localSpy = localTeamId%MAX_SIDES == teamId%MAX_SIDES

	EnableFogOfWar(teamId, not active)
	if localSpy then
		if active then
			AddMouseAccessory("commander-spy", "magnifying_glass_icon", 0, 32, 42, 42)
		else
			DeleteMouseAccessory("commander-spy")
		end
	end

	if active then
		local teams = DiscoverTeams(data.enemySideId)
		if #teams > 0 then
			local perTeamMetal = 200
			local perTeamEnergy = 2000
			local stolenAmount = Value()

			for i,team in ipairs(teams) do
				--Log("attempting theft from " .. team)
				local teamAmount = TransferResources(team, teamId, perTeamMetal, perTeamEnergy, true)
				stolenAmount = stolenAmount + teamAmount
			end

			--Log("stolen amount " .. tostring(stolenAmount))

			if localSpy and (stolenAmount.metal > 0 or stolenAmount.energy > 0) then
				ShowStolenResources(stolenAmount)
			end
		end
	end
end

function OnControlActivated(name)
	if name == "SpyNext" and GetLocalTeamId()%MAX_SIDES == teamId%MAX_SIDES then
		--Log("SpyNext hit")
	
		local teams = DiscoverTeams(data.enemySideId)
		data.teamIndex = (data.teamIndex or 0) + 1
		if data.teamIndex > #teams then
			data.teamIndex = 1
		end

		--Log("team index " .. data.teamIndex)
		if #teams > 0 and data.currentTeam ~= teams[data.teamIndex] then
			--Log("Switching from team " .. tostring(data.currentTeam) .. " to team " .. tostring(teams[data.teamIndex]))
			ConfigureDeviceNodeEffect(data.currentTeam, "reactor", "Core", false, true)
			ConfigureDeviceNodeEffect(teams[data.teamIndex], "reactor", "Core", true, true)
			data.currentTeam = teams[data.teamIndex]
			SetInspectedEnemyTeamId(data.currentTeam)
		end
	end
end

function OnDeviceCreated(deviceTeamId, deviceId, saveName, nodeAId, nodeBId, t, upgradedId)
	if (GetDeviceMovingId(deviceId) == -1) then
		ActOnDeviceCreation(deviceTeamId, deviceId, saveName)
	end
end

function OnGroundDeviceCreated(deviceTeamId, deviceId, saveName, pos)
	if (GetDeviceMovingId(deviceId) == -1) then
		ActOnDeviceCreation(deviceTeamId, deviceId, saveName)
	end
end

function ActOnDeviceCreation(deviceTeamId, deviceId, saveName)
	if deviceTeamId%MAX_SIDES == data.enemySideId then
		local teams = DiscoverTeams(data.enemySideId)
		if deviceTeamId == teams[data.teamIndex] then
			if IsWeapon(deviceId) then
				SetControlText("ResourcePanelEnemy", "LastDevice", "$Weapon." .. saveName)
			else
				SetControlText("ResourcePanelEnemy", "LastDevice", "$Device." .. saveName)
			end
		end
	end
end

Sprites =
{
	{
		Name = "magnifying_glass_icon",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/CPIcons-MagnifyingGlass.tga" },

					duration = 1,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
}

