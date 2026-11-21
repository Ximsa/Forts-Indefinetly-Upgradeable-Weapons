local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head54"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 3.193536807215914
MaxFireSpeed = 3900.1
EnergyFireCost = 22425.9068233031
MetalFireCost = 782.2990752315035
ReloadTime = 13.296875
Projectile = "_silomissile254"
FireStdDev =0.0003200056829263939
FireStdDevAuto =0.0003200056829263939
