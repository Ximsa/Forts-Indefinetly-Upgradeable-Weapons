local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp
Sprites={{Name = "howitzer-base40",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/howitzer/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="howitzer-base40"
NodeEffects = {}
EnergyFireCost = 28586.816249743682
MetalFireCost = 500.26928437051447
Projectile = "_howitzer40"
