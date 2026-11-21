local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head53"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 3.5483742302399044
MaxFireSpeed = 3850.1
EnergyFireCost = 21869.200564483053
MetalFireCost = 762.8790894587111
ReloadTime = 13.4765625
Projectile = "_silomissile253"
FireStdDev =0.00035200625121903335
FireStdDevAuto =0.00035200625121903335
