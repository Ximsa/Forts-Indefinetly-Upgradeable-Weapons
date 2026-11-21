local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base6",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base6"
NodeEffects = {}
BeamDuration = 3.75
EnergyFireCost = 2250.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)