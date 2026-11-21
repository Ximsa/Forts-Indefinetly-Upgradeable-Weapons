local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head59"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 1.885751549292925
MaxFireSpeed = 4150.1
EnergyFireCost = 25342.66649369348
MetalFireCost = 884.0465055939584
ReloadTime = 12.3984375
Projectile = "_silomissile259"
FireStdDev =0.0001986983520291049
FireStdDevAuto =0.0001986983520291049
