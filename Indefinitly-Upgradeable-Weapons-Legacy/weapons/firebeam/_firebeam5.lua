local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base5",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base5"
NodeEffects = {}
BeamDuration = 3.5
EnergyFireCost = 2100.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)