local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head19"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 127.58044000244928
MaxFireSpeed = 2150.1
EnergyFireCost = 7271.539668599268
MetalFireCost = 253.65836053253258
ReloadTime = 19.5859375
Projectile = "_silomissile219"
FireStdDev =0.008992939495460683
FireStdDevAuto =0.008992939495460683
