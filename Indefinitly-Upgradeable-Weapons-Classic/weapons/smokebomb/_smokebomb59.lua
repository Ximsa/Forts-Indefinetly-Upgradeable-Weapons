local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base59",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base59"
NodeEffects = {}
EnergyFireCost = 3536.1860223758335
MetalFireCost = 353.61860223758345
ReloadTime = 8.840625
FireSpreadMultiplier = 0.083
Projectile = "smokebomb59"
DestroyProjectile = "smoke59"
