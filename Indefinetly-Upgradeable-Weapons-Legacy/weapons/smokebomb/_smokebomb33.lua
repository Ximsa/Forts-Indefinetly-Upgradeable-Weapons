local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base33",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base33"
NodeEffects = {}
EnergyFireCost = 1726.0382422873504
MetalFireCost = 172.60382422873508
ReloadTime = 12.171875
FireSpreadMultiplier = 0.05700000000000001
Projectile = "smokebomb33"
DestroyProjectile = "smoke33"
