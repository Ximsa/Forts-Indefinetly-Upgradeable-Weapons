local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head4"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 619.65
MaxFireSpeed = 1400.1
EnergyFireCost = 2907.494773864746
MetalFireCost = 101.42423629760742
ReloadTime = 22.28125
Projectile = "_silomissile24"
FireStdDev =0.037565740045078885
FireStdDevAuto =0.037565740045078885
