local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base37",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base37"
NodeEffects = {}
EnergyFireCost = 26124.164802814048
MetalFireCost = 457.17288404924585
Projectile = "_howitzer37"
