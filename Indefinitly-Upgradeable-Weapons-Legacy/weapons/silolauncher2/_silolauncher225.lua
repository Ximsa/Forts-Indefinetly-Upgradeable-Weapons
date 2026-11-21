local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head25"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 67.80147661534167
MaxFireSpeed = 2450.1
EnergyFireCost = 9321.889811749526
MetalFireCost = 325.18220273544847
ReloadTime = 18.5078125
Projectile = "_silomissile225"
FireStdDev =0.005076279899738524
FireStdDevAuto =0.005076279899738524
