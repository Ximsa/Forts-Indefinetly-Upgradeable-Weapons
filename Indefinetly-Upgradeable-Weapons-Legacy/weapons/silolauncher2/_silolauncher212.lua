local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head12"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 266.7390066765
MaxFireSpeed = 1800.1
EnergyFireCost = 5108.500552477493
MetalFireCost = 178.20350764456367
ReloadTime = 20.84375
Projectile = "_silomissile212"
FireStdDev =0.017524694974069614
FireStdDevAuto =0.017524694974069614
