local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head35"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 23.640913102713967
MaxFireSpeed = 2950.1
EnergyFireCost = 13192.880764467549
MetalFireCost = 460.216770853519
ReloadTime = 16.7109375
Projectile = "_silomissile235"
FireStdDev =0.0019571256506102025
FireStdDevAuto =0.0019571256506102025
