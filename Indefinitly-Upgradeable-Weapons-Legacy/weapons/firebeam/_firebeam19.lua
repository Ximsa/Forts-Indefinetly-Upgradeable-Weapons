local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base19",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base19"
NodeEffects = {}
BeamDuration = 7.0
EnergyFireCost = 4200.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)