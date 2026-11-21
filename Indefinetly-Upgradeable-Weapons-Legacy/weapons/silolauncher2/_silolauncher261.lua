local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head61"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 1.5274587549272693
MaxFireSpeed = 4250.1
EnergyFireCost = 26574.171371058335
MetalFireCost = 927.0059780601744
ReloadTime = 12.0390625
Projectile = "_silomissile261"
FireStdDev =0.00016421351407364037
FireStdDevAuto =0.00016421351407364037
