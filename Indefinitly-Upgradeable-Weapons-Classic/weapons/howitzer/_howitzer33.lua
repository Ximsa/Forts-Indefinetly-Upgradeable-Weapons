local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base33",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base33"
NodeEffects = {}
EnergyFireCost = 23013.843230498016
MetalFireCost = 402.7422565337153
Projectile = "_howitzer33"
