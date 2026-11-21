local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base62",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base62"
NodeEffects = {}
EnergyFireCost = 3795.9617858694583
MetalFireCost = 379.59617858694594
ReloadTime = 8.456249999999999
FireSpreadMultiplier = 0.08600000000000001
Projectile = "smokebomb62"
DestroyProjectile = "smoke62"
