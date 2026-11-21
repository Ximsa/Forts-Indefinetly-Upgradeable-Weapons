local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head44"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 9.158974114659957
MaxFireSpeed = 3400.1
EnergyFireCost = 17228.86242745628
MetalFireCost = 601.0068288647537
ReloadTime = 15.09375
Projectile = "_silomissile244"
FireStdDev =0.0008300123272794863
FireStdDevAuto =0.0008300123272794863
