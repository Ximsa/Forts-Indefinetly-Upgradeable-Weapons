local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head22"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 93.00614076178553
MaxFireSpeed = 2300.1
EnergyFireCost = 8272.877279239938
MetalFireCost = 288.5887422990675
ReloadTime = 19.046875
Projectile = "_silomissile222"
FireStdDev =0.006756528546551977
FireStdDevAuto =0.006756528546551977
