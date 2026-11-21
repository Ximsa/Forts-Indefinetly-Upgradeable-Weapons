local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head2"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 765.0
MaxFireSpeed = 1300.1
EnergyFireCost = 2398.59375
MetalFireCost = 83.671875
ReloadTime = 22.640625
Projectile = "_silomissile22"
FireStdDev =0.045454545454545456
FireStdDevAuto =0.045454545454545456
