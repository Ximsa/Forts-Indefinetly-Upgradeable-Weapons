local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head8"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 406.552365
MaxFireSpeed = 1600.1
EnergyFireCost = 3973.883792026006
MetalFireCost = 138.62385321020952
ReloadTime = 21.5625
Projectile = "_silomissile28"
FireStdDev =0.025657905911535328
FireStdDevAuto =0.025657905911535328
