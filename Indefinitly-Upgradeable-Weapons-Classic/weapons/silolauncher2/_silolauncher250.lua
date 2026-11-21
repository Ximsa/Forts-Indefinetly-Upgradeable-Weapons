local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head50"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 4.867454362469004
MaxFireSpeed = 3700.1
EnergyFireCost = 20249.945026038582
MetalFireCost = 706.3934311408806
ReloadTime = 14.015625
Projectile = "_silomissile250"
FireStdDev =0.00046852032037253345
FireStdDevAuto =0.00046852032037253345
