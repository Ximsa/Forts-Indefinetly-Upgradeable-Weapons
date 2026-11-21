local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head47"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 6.6768921295871095
MaxFireSpeed = 3550.1
EnergyFireCost = 18704.280487595293
MetalFireCost = 652.4749007300683
ReloadTime = 14.5546875
Projectile = "_silomissile247"
FireStdDev =0.0006236005464158422
FireStdDevAuto =0.0006236005464158422
