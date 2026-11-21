local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base48",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base48"
NodeEffects = {}
BeamDuration = 14.25
EnergyFireCost = 8550.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)