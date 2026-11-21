local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head60"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 1.6971763943636327
MaxFireSpeed = 4200.1
EnergyFireCost = 25953.64565765744
MetalFireCost = 905.359732243864
ReloadTime = 12.21875
Projectile = "_silomissile260"
FireStdDev =0.00018063486548100443
FireStdDevAuto =0.00018063486548100443
