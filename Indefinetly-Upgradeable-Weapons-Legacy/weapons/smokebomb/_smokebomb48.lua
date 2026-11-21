local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base48",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base48"
NodeEffects = {}
EnergyFireCost = 2680.6792842159025
MetalFireCost = 268.06792842159035
ReloadTime = 10.25
FireSpreadMultiplier = 0.072
Projectile = "smokebomb48"
DestroyProjectile = "smoke48"
