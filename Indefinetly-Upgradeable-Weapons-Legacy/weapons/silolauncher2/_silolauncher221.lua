local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head21",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head21"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 103.34015640198392
MaxFireSpeed = 2250.1
EnergyFireCost = 7933.9099364824
MetalFireCost = 276.7643001098511
ReloadTime = 19.2265625
Projectile = "_silomissile221"
FireStdDev =0.0074321814012071755
FireStdDevAuto =0.0074321814012071755
