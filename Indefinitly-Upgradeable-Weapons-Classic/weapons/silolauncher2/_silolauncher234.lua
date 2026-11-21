local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head34"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 26.26768122523774
MaxFireSpeed = 2900.1
EnergyFireCost = 12778.221060398817
MetalFireCost = 445.75189745577256
ReloadTime = 16.890625
Projectile = "_silomissile234"
FireStdDev =0.002152838215671223
FireStdDevAuto =0.002152838215671223
