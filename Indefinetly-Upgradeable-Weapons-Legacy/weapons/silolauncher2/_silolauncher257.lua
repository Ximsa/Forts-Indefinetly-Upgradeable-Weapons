local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head57"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 2.328088332460401
MaxFireSpeed = 4050.1
EnergyFireCost = 24148.762593649346
MetalFireCost = 842.3986951273026
ReloadTime = 12.7578125
Projectile = "_silomissile257"
FireStdDev =0.00024042500595521698
FireStdDevAuto =0.00024042500595521698
