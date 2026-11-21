local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/firebeam.lua")
path = tmp
Sprites={{Name = "firebeam-base53",States={Normal={Frames={{texture="mods/weapon_pack/weapons/firebeam/base",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="firebeam-base53"
NodeEffects = {}
BeamDuration = 15.5
EnergyFireCost = 9300.0/BeamDuration
Projectile = "firebeam"
GenerateBeamTable(BeamDuration, 0.05, 1)