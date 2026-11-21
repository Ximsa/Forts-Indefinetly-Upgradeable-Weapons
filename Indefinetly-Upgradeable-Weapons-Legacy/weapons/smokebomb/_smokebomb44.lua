local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base44",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base44"
NodeEffects = {}
EnergyFireCost = 2404.027315459015
MetalFireCost = 240.40273154590162
ReloadTime = 10.7625
FireSpreadMultiplier = 0.06799999999999999
Projectile = "smokebomb44"
DestroyProjectile = "smoke44"
