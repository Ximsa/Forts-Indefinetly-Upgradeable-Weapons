local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base53",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base53"
NodeEffects = {}
EnergyFireCost = 3051.5163578348443
MetalFireCost = 305.1516357834845
ReloadTime = 9.609375
FireSpreadMultiplier = 0.07700000000000001
Projectile = "smokebomb53"
DestroyProjectile = "smoke53"
