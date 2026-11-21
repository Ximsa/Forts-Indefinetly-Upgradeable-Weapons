local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base60",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base60"
NodeEffects = {}
EnergyFireCost = 3621.438928975456
MetalFireCost = 362.1438928975457
ReloadTime = 8.712499999999999
FireSpreadMultiplier = 0.084
Projectile = "smokebomb60"
DestroyProjectile = "smoke60"
