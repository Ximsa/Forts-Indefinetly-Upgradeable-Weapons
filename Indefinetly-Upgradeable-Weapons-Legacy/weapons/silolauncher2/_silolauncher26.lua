local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head6"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 501.9165
MaxFireSpeed = 1500.1
EnergyFireCost = 3432.423198139295
MetalFireCost = 119.7356929583475
ReloadTime = 21.921875
Projectile = "_silomissile26"
FireStdDev =0.03104606615295775
FireStdDevAuto =0.03104606615295775
