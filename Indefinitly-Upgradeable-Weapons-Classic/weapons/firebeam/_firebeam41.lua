local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base41",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base41"
NodeEffects = {}
BeamDuration = 12.5
EnergyFireCost = 7500.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)