local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head26"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 61.021328953807505
MaxFireSpeed = 2500.1
EnergyFireCost = 9682.544340058113
MetalFireCost = 337.7631746531899
ReloadTime = 18.328125
Projectile = "_silomissile226"
FireStdDev =0.004614799908853203
FireStdDevAuto =0.004614799908853203
