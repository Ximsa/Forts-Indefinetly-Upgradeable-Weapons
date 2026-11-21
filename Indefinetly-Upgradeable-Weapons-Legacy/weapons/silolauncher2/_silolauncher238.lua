local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head38"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 17.234225651878486
MaxFireSpeed = 3100.1
EnergyFireCost = 14476.140746848681
MetalFireCost = 504.98165395983756
ReloadTime = 16.171875
Projectile = "_silomissile238"
FireStdDev =0.0014704174685275747
FireStdDevAuto =0.0014704174685275747
