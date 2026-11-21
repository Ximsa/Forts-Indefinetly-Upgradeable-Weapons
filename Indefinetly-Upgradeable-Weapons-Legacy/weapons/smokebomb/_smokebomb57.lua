local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base57",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base57"
NodeEffects = {}
EnergyFireCost = 3369.5947805092105
MetalFireCost = 336.9594780509211
ReloadTime = 9.096874999999999
FireSpreadMultiplier = 0.08100000000000002
Projectile = "smokebomb57"
DestroyProjectile = "smoke57"
