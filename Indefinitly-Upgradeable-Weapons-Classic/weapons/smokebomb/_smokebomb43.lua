local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base43",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base43"
NodeEffects = {}
EnergyFireCost = 2337.503818298107
MetalFireCost = 233.75038182981083
ReloadTime = 10.890625
FireSpreadMultiplier = 0.06699999999999999
Projectile = "smokebomb43"
DestroyProjectile = "smoke43"
