local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base18",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base18"
NodeEffects = {}
BeamDuration = 6.75
EnergyFireCost = 4050.0000000000005/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)