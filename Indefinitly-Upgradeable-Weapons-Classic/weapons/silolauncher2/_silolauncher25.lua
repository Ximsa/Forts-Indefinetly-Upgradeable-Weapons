local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head5"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 557.685
MaxFireSpeed = 1450.1
EnergyFireCost = 3167.9243797063828
MetalFireCost = 110.50898998975754
ReloadTime = 22.1015625
Projectile = "_silomissile25"
FireStdDev =0.03415067276825353
FireStdDevAuto =0.03415067276825353
