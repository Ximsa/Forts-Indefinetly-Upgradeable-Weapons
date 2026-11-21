local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head23"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 83.70552668560698
MaxFireSpeed = 2350.1
EnergyFireCost = 8617.140986728062
MetalFireCost = 300.59794139749044
ReloadTime = 18.8671875
Projectile = "_silomissile223"
FireStdDev =0.0061422986786836145
FireStdDevAuto =0.0061422986786836145
