local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base15",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base15"
NodeEffects = {}
BeamDuration = 6.000000000000001
EnergyFireCost = 3600.0000000000005/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)