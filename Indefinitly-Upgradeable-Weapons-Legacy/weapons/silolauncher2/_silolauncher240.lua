local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head40"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 13.959722778021574
MaxFireSpeed = 3200.1
EnergyFireCost = 15365.413734237225
MetalFireCost = 536.0028046826937
ReloadTime = 15.8125
Projectile = "_silomissile240"
FireStdDev =0.0012152210483698962
FireStdDevAuto =0.0012152210483698962
