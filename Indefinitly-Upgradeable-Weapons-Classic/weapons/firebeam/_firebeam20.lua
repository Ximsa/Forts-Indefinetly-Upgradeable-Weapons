local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base20",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base20"
NodeEffects = {}
BeamDuration = 7.250000000000001
EnergyFireCost = 4350.000000000001/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)