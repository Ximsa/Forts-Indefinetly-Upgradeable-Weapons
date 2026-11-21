local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base25",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base25"
NodeEffects = {}
EnergyFireCost = 1300.7288109417939
MetalFireCost = 130.07288109417942
ReloadTime = 13.196874999999999
FireSpreadMultiplier = 0.049
Projectile = "smokebomb25"
DestroyProjectile = "smoke25"
