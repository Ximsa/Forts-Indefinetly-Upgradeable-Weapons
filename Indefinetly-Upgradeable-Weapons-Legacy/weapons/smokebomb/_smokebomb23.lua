local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base23",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base23"
NodeEffects = {}
EnergyFireCost = 1202.3917655899618
MetalFireCost = 120.23917655899619
ReloadTime = 13.453124999999998
FireSpreadMultiplier = 0.047
Projectile = "smokebomb23"
DestroyProjectile = "smoke23"
