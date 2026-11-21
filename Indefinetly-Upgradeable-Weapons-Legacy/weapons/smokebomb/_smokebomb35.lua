local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base35",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base35"
NodeEffects = {}
EnergyFireCost = 1840.867083414076
MetalFireCost = 184.08670834140764
ReloadTime = 11.915624999999999
FireSpreadMultiplier = 0.05900000000000001
Projectile = "smokebomb35"
DestroyProjectile = "smoke35"
