local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base47",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base47"
NodeEffects = {}
EnergyFireCost = 2609.899602920273
MetalFireCost = 260.98996029202743
ReloadTime = 10.378124999999999
FireSpreadMultiplier = 0.071
Projectile = "smokebomb47"
DestroyProjectile = "smoke47"
