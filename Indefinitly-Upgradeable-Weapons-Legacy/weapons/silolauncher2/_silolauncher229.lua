local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head29"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 44.48454880732567
MaxFireSpeed = 2650.1
EnergyFireCost = 10798.672864488448
MetalFireCost = 376.6978906216899
ReloadTime = 17.7890625
Projectile = "_silomissile229"
FireStdDev =0.0034671674747206623
FireStdDevAuto =0.0034671674747206623
