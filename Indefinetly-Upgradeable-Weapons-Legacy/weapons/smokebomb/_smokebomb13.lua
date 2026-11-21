local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base13",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base13"
NodeEffects = {}
EnergyFireCost = 753.95174980604
MetalFireCost = 75.395174980604
ReloadTime = 14.734374999999998
FireSpreadMultiplier = 0.037
Projectile = "smokebomb13"
DestroyProjectile = "smoke13"
