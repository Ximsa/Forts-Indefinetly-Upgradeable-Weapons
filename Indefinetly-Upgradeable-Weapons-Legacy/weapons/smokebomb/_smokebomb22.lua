local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base22",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base22"
NodeEffects = {}
EnergyFireCost = 1154.35496919627
MetalFireCost = 115.43549691962701
ReloadTime = 13.581249999999999
FireSpreadMultiplier = 0.046
Projectile = "smokebomb22"
DestroyProjectile = "smoke22"
