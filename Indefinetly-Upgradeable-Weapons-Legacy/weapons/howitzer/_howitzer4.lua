local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base4",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base4"
NodeEffects = {}
EnergyFireCost = 5409.2926025390625
MetalFireCost = 94.6626205444336
Projectile = "_howitzer4"
