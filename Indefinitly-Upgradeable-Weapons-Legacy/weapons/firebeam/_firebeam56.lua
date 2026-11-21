local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base56",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base56"
NodeEffects = {}
BeamDuration = 16.25
EnergyFireCost = 9750.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)