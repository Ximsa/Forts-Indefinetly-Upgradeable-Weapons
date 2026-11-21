local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base12",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base12"
NodeEffects = {}
EnergyFireCost = 712.8140305782547
MetalFireCost = 71.28140305782547
ReloadTime = 14.862499999999999
FireSpreadMultiplier = 0.036
Projectile = "smokebomb12"
DestroyProjectile = "smoke12"
