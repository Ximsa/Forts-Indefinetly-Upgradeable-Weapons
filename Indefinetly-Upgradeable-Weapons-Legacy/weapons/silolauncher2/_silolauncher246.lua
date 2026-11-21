local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head46"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 7.418769032874566
MaxFireSpeed = 3500.1
EnergyFireCost = 18204.830018555367
MetalFireCost = 635.0522099496056
ReloadTime = 14.734375
Projectile = "_silomissile246"
FireStdDev =0.0006859606010574265
FireStdDevAuto =0.0006859606010574265
