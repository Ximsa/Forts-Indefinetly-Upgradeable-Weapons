local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head42"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 11.307375450197476
MaxFireSpeed = 3300.1
EnergyFireCost = 16282.693610144599
MetalFireCost = 568.0009398887648
ReloadTime = 15.453125
Projectile = "_silomissile242"
FireStdDev =0.0010043149160081785
FireStdDevAuto =0.0010043149160081785
