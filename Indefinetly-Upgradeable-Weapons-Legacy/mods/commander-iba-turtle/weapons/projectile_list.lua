if active then
	local sniper2 = FindProjectile("sniper2")
	if sniper2 then
        for i = 2, upgradeCount do
            sniperU = FindProjectile("_sniper2" .. i)
            sniperU.PenetrationDamage = 1.42*sniper2.PenetrationDamage
            sniperU.TrailEffect = path .. "/effects/sniper_trail.lua"
            if sniperU.MomentumThreshold == nil then
                sniperU.MomentumThreshold = {}
            end
            sniperU.MomentumThreshold["shield"] = { Reflect = 400, Penetrate = 400 }
            sniperU.PenetrationSpeedMultiplier = 0.8
            sniperU.ProjectileThickness = sniper2.ProjectileThickness + 1
        end
	end

	local minigun2 = FindProjectile("minigun2")
	if minigun2 then
        for i = 2, upgradeCount do
            minigunU = FindProjectile("_minigunAP" .. i)
            if minigunU.MomentumThreshold == nil then
                minigunU.MomentumThreshold = {}
            end
            minigunU.MomentumThreshold["shield"] = { Reflect = 400, Penetrate = 400 }
            minigunU.DeflectedByShields = false
        end
	end
end
