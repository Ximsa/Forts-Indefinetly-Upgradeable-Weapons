local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base13",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base13"
NodeEffects = {}
BeamDuration = 5.5
EnergyFireCost = 3300.0000000000005/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)