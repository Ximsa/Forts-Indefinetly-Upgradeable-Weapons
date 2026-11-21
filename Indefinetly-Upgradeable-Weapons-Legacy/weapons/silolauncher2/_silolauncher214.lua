local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head14"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 216.05859540796502
MaxFireSpeed = 1900.1
EnergyFireCost = 5702.74776226011
MetalFireCost = 198.93306147418983
ReloadTime = 20.484375
Projectile = "_silomissile214"
FireStdDev =0.01448321898683439
FireStdDevAuto =0.01448321898683439
