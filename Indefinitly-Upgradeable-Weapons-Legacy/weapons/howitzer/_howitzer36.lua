local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base36",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base36"
NodeEffects = {}
EnergyFireCost = 25328.408421232292
MetalFireCost = 443.2471473715651
Projectile = "_howitzer36"
