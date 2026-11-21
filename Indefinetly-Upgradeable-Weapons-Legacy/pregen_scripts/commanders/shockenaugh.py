import math

iterations = 64

path = "../../mods/commander-bpo-shockenaugh/mods/1369514837/weapons/"
originalWeaponPath = "../../weapons/"

cannon20mm = """if active then
FireEffect = "effects/fire_cannon.lua"
RoundsEachBurst = 1

-- from base + skirmish mod cannon.lua
KickbackMean = 40
KickbackStdDev = 5
MouseSensitivityFactor = 0.5
Recoil = 600000
"""
firebeam = """if active then
FireEffect = "effects/fire_laser.lua"
FireEndEffect = "effects/laser_post_fire.lua"
BeamEndEffectTime = 1.0
BeamThicknessMultiplier = 1.0
BeamDamageMultiplier = 1.0
BeamPenetrationRotationThreshold = 0.0004
DoorCloseDelay = 2
AutofireCloseDoorTicks = DoorCloseDelay*25
BeamsCutOffEffects = true
BeamsRecycleEffects = true
function BeamThickness(t)
return InterpolateTable(BeamTable, t, 2)
end
function BeamDamage(t)
--	return 0
return InterpolateTable(BeamTable, t, 3)
end
"""

for x in range (2, iterations + 1):
    fp = open(originalWeaponPath + "cannon/_cannon" + str(x) + ".lua", "r")
    current = cannon20mm
    for line in fp:
        if line.startswith(('EnergyFireCost', 'MetalFireCost', 'Projectile')):
            current = current + line
    fp.close()
    current = current + "\nend\n"
    fp = open( path + "cannon20mm/_cannon20mm" + str(x) + ".lua","w")
    fp.write(current + "\n")
    fp.close()

    fp = open(originalWeaponPath + "laser/_laser" + str(x) + ".lua", "r")
    current = firebeam
    for line in fp:
        if line.startswith(('BeamTable','BeamDuration','Projectile','EnergyireCost')):
            current = current + line
    fp.close()
    current = current + "\nend\n"
    fp = open( path + "firebeam/_firebeam" + str(x) + ".lua", "w")
    fp.write(current + "\n")
    fp.close()
    
