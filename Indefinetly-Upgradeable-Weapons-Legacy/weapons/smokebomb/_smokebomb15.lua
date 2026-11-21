local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base15",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base15"
NodeEffects = {}
EnergyFireCost = 838.1655622388962
MetalFireCost = 83.81655622388962
ReloadTime = 14.478124999999999
FireSpreadMultiplier = 0.03900000000000001
Projectile = "smokebomb15"
DestroyProjectile = "smoke15"
