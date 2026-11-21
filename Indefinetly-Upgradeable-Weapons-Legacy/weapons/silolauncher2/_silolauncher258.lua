local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head58"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 2.095279499214361
MaxFireSpeed = 4100.1
EnergyFireCost = 24741.087009175117
MetalFireCost = 863.0611747386668
ReloadTime = 12.578125
Projectile = "_silomissile258"
FireStdDev =0.0002185681872320154
FireStdDevAuto =0.0002185681872320154
