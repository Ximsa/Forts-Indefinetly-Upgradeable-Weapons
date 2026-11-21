local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head3"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 688.5
MaxFireSpeed = 1350.1
EnergyFireCost = 2651.07177734375
MetalFireCost = 92.479248046875
ReloadTime = 22.4609375
Projectile = "_silomissile23"
FireStdDev =0.04132231404958678
FireStdDevAuto =0.04132231404958678
