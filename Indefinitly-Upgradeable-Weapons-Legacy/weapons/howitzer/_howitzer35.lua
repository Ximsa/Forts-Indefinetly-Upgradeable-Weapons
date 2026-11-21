local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base35",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base35"
NodeEffects = {}
EnergyFireCost = 24544.894445521026
MetalFireCost = 429.53565279661797
Projectile = "_howitzer35"
