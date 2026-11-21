local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base34",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base34"
NodeEffects = {}
BeamDuration = 10.750000000000002
EnergyFireCost = 6450.000000000001/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)