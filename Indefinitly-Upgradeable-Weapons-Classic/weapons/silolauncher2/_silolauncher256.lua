local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head56"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 2.58676481384489
MaxFireSpeed = 4000.1
EnergyFireCost = 23565.550861439355
MetalFireCost = 822.0540998176518
ReloadTime = 12.9375
Projectile = "_silomissile256"
FireStdDev =0.0002644675065507387
FireStdDevAuto =0.0002644675065507387
