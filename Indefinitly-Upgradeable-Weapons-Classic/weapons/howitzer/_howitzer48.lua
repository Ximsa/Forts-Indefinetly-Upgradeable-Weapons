local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base48",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base48"
NodeEffects = {}
EnergyFireCost = 35742.390456212044
MetalFireCost = 625.4918329837111
Projectile = "_howitzer48"
