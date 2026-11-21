local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head32"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 32.42923608054042
MaxFireSpeed = 2800.1
EnergyFireCost = 11967.941648140488
MetalFireCost = 417.4863365630401
ReloadTime = 17.25
Projectile = "_silomissile232"
FireStdDev =0.00260493424096218
FireStdDevAuto =0.00260493424096218
