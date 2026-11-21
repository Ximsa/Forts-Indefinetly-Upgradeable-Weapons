local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base49",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base49"
NodeEffects = {}
EnergyFireCost = 2752.564898031776
MetalFireCost = 275.2564898031777
ReloadTime = 10.121875
FireSpreadMultiplier = 0.073
Projectile = "smokebomb49"
DestroyProjectile = "smoke49"
