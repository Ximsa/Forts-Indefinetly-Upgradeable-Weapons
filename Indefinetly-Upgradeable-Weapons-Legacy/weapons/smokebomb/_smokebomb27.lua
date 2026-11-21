local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base27",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base27"
NodeEffects = {}
EnergyFireCost = 1402.162897028584
MetalFireCost = 140.21628970285843
ReloadTime = 12.940624999999999
FireSpreadMultiplier = 0.051000000000000004
Projectile = "smokebomb27"
DestroyProjectile = "smoke27"
