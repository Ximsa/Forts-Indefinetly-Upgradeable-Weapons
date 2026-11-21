local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head39"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 15.510803086690638
MaxFireSpeed = 3150.1
EnergyFireCost = 14917.330446018192
MetalFireCost = 520.37199230296
ReloadTime = 15.9921875
Projectile = "_silomissile239"
FireStdDev =0.001336743153206886
FireStdDevAuto =0.001336743153206886
