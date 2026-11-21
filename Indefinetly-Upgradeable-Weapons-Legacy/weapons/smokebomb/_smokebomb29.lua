local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base29",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base29"
NodeEffects = {}
EnergyFireCost = 1506.7915624867596
MetalFireCost = 150.679156248676
ReloadTime = 12.684375
FireSpreadMultiplier = 0.053000000000000005
Projectile = "smokebomb29"
DestroyProjectile = "smoke29"
