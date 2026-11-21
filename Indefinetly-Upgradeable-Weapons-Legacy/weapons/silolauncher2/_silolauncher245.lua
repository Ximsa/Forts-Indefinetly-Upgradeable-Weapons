local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head45"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 8.243076703193962
MaxFireSpeed = 3450.1
EnergyFireCost = 17713.063402885284
MetalFireCost = 617.8975605657655
ReloadTime = 14.9140625
Projectile = "_silomissile245"
FireStdDev =0.0007545566611631692
FireStdDevAuto =0.0007545566611631692
