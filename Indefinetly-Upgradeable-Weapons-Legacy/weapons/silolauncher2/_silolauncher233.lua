local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head33"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 29.186312472486378
MaxFireSpeed = 2850.1
EnergyFireCost = 12369.940736392682
MetalFireCost = 431.5095605718376
ReloadTime = 17.0703125
Projectile = "_silomissile233"
FireStdDev =0.0023681220372383455
FireStdDevAuto =0.0023681220372383455
