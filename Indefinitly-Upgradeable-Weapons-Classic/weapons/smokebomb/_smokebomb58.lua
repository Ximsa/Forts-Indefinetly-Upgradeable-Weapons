local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base58",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base58"
NodeEffects = {}
EnergyFireCost = 3452.244698954667
MetalFireCost = 345.22446989546677
ReloadTime = 8.96875
FireSpreadMultiplier = 0.08200000000000002
Projectile = "smokebomb58"
DestroyProjectile = "smoke58"
