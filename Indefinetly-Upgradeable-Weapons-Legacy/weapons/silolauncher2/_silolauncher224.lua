local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head24"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 75.33497401704629
MaxFireSpeed = 2400.1
EnergyFireCost = 8966.783814645687
MetalFireCost = 312.7947842318262
ReloadTime = 18.6875
Projectile = "_silomissile224"
FireStdDev =0.005583907889712377
FireStdDevAuto =0.005583907889712377
