local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base59",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base59"
NodeEffects = {}
EnergyFireCost = 47149.14696501113
MetalFireCost = 825.1100718876952
Projectile = "_howitzer59"
