local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head27"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 54.919196058426756
MaxFireSpeed = 2550.1
EnergyFireCost = 10048.834095371521
MetalFireCost = 350.540724257146
ReloadTime = 18.1484375
Projectile = "_silomissile227"
FireStdDev =0.004195272644412002
FireStdDevAuto =0.004195272644412002
