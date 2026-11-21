local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base40",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base40"
NodeEffects = {}
EnergyFireCost = 2144.011218730775
MetalFireCost = 214.40112187307759
ReloadTime = 11.274999999999999
FireSpreadMultiplier = 0.064
Projectile = "smokebomb40"
DestroyProjectile = "smoke40"
