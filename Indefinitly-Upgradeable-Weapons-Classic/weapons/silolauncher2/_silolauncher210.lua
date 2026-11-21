local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head10"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 329.30741565
MaxFireSpeed = 1700.1
EnergyFireCost = 4532.397221999482
MetalFireCost = 158.1068798371912
ReloadTime = 21.203125
Projectile = "_silomissile210"
FireStdDev =0.021204880918624235
FireStdDevAuto =0.021204880918624235
