local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head20"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 114.82239600220436
MaxFireSpeed = 2200.1
EnergyFireCost = 7600.157475921132
MetalFireCost = 265.1217724158534
ReloadTime = 19.40625
Projectile = "_silomissile220"
FireStdDev =0.008175399541327894
FireStdDevAuto =0.008175399541327894
