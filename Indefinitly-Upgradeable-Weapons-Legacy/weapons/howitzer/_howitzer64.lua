local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base64",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base64"
NodeEffects = {}
EnergyFireCost = 53013.081202143454
MetalFireCost = 927.7289210375108
Projectile = "_howitzer64"
