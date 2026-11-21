local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head13"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 240.06510600885002
MaxFireSpeed = 1850.1
EnergyFireCost = 5403.320873609954
MetalFireCost = 188.48793745151
ReloadTime = 20.6640625
Projectile = "_silomissile213"
FireStdDev =0.01593154088551783
FireStdDevAuto =0.01593154088551783
