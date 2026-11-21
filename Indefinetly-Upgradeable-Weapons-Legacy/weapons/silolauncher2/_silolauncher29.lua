local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head9"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 365.8971285
MaxFireSpeed = 1650.1
EnergyFireCost = 4250.975726276413
MetalFireCost = 148.28985091661903
ReloadTime = 21.3828125
Projectile = "_silomissile29"
FireStdDev =0.02332536901048666
FireStdDevAuto =0.02332536901048666
