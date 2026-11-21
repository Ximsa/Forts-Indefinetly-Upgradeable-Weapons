local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base47",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base47"
NodeEffects = {}
BeamDuration = 14.000000000000002
EnergyFireCost = 8400.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)