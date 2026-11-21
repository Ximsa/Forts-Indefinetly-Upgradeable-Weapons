local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base31",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base31"
NodeEffects = {}
EnergyFireCost = 21529.538904643756
MetalFireCost = 376.76693083126577
Projectile = "_howitzer31"
