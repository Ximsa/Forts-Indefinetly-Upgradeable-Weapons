local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base14",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base14"
NodeEffects = {}
EnergyFireCost = 795.7322458967593
MetalFireCost = 79.57322458967593
ReloadTime = 14.60625
FireSpreadMultiplier = 0.038000000000000006
Projectile = "smokebomb14"
DestroyProjectile = "smoke14"
