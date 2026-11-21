local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base63",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base63"
NodeEffects = {}
EnergyFireCost = 3885.2736887736687
MetalFireCost = 388.527368877367
ReloadTime = 8.328125
FireSpreadMultiplier = 0.08700000000000001
Projectile = "smokebomb63"
DestroyProjectile = "smoke63"
