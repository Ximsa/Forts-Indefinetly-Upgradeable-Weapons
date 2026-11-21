local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base53",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base53"
NodeEffects = {}
EnergyFireCost = 40686.88477113127
MetalFireCost = 712.0204834947975
Projectile = "_howitzer53"
