local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base49",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base49"
NodeEffects = {}
BeamDuration = 14.500000000000002
EnergyFireCost = 8700.000000000002/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)