local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head64"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 1.1135174323419794
MaxFireSpeed = 4400.1
EnergyFireCost = 28494.531146152098
MetalFireCost = 993.9952725401894
ReloadTime = 11.5
Projectile = "_silomissile264"
FireStdDev =0.00012337604363158553
FireStdDevAuto =0.00012337604363158553
