local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base37",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base37"
NodeEffects = {}
EnergyFireCost = 1959.3123602110525
MetalFireCost = 195.9312360211053
ReloadTime = 11.659374999999999
FireSpreadMultiplier = 0.061
Projectile = "smokebomb37"
DestroyProjectile = "smoke37"
