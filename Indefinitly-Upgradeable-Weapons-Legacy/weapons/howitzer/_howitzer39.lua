local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base39",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base39"
NodeEffects = {}
EnergyFireCost = 27753.17292282455
MetalFireCost = 485.6805261494296
Projectile = "_howitzer39"
