local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base62",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base62"
NodeEffects = {}
BeamDuration = 17.75
EnergyFireCost = 10650.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)