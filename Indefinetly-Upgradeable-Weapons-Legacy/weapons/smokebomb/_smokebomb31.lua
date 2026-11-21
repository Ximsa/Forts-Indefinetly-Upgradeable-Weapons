local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base31",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base31"
NodeEffects = {}
EnergyFireCost = 1614.715417848281
MetalFireCost = 161.47154178482816
ReloadTime = 12.428124999999998
FireSpreadMultiplier = 0.05500000000000001
Projectile = "smokebomb31"
DestroyProjectile = "smoke31"
