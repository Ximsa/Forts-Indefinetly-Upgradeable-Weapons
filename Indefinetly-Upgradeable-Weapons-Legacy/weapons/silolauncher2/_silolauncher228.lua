local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head28"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 49.42727645258408
MaxFireSpeed = 2600.1
EnergyFireCost = 10420.847128111702
MetalFireCost = 363.5179230736639
ReloadTime = 17.96875
Projectile = "_silomissile228"
FireStdDev =0.0038138842221927286
FireStdDevAuto =0.0038138842221927286
