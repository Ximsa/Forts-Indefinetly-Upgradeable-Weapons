local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head48"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 6.009202916628399
MaxFireSpeed = 3600.1
EnergyFireCost = 19211.53487021397
MetalFireCost = 670.1698210539756
ReloadTime = 14.375
Projectile = "_silomissile248"
FireStdDev =0.0005669095876507656
FireStdDevAuto =0.0005669095876507656
