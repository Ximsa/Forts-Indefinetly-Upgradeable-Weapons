local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head51"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 4.380708926222104
MaxFireSpeed = 3750.1
EnergyFireCost = 20781.350417070436
MetalFireCost = 724.9308285024568
ReloadTime = 13.8359375
Projectile = "_silomissile251"
FireStdDev =0.0004259275639750304
FireStdDevAuto =0.0004259275639750304
