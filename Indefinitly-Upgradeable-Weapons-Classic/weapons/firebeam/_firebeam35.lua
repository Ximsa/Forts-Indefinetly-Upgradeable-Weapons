local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base35",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base35"
NodeEffects = {}
BeamDuration = 11.0
EnergyFireCost = 6600.000000000001/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)