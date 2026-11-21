local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base16",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base16"
NodeEffects = {}
BeamDuration = 6.25
EnergyFireCost = 3750.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)