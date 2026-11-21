local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base61",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base61"
NodeEffects = {}
EnergyFireCost = 3708.0239122406974
MetalFireCost = 370.8023912240698
ReloadTime = 8.584375
FireSpreadMultiplier = 0.085
Projectile = "smokebomb61"
DestroyProjectile = "smoke61"
