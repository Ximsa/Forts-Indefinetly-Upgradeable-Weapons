local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base52",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base52"
NodeEffects = {}
EnergyFireCost = 39667.086543883095
MetalFireCost = 694.1740145179544
Projectile = "_howitzer52"
