local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head31"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 36.0324845339338
MaxFireSpeed = 2750.1
EnergyFireCost = 11572.127161246019
MetalFireCost = 403.67885446207026
ReloadTime = 17.4296875
Projectile = "_silomissile231"
FireStdDev =0.0028654276650583984
FireStdDevAuto =0.0028654276650583984
