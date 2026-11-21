local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head52"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 3.9426380335998936
MaxFireSpeed = 3800.1
EnergyFireCost = 21321.05901733716
MetalFireCost = 743.7578726978078
ReloadTime = 13.65625
Projectile = "_silomissile252"
FireStdDev =0.0003872068763409367
FireStdDevAuto =0.0003872068763409367
