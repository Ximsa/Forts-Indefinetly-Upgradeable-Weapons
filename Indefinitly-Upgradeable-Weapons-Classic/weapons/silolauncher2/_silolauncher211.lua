local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head11"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 296.376674085
MaxFireSpeed = 1750.1
EnergyFireCost = 4818.215928593224
MetalFireCost = 168.0772998346473
ReloadTime = 21.0234375
Projectile = "_silomissile211"
FireStdDev =0.019277164471476576
FireStdDevAuto =0.019277164471476576
