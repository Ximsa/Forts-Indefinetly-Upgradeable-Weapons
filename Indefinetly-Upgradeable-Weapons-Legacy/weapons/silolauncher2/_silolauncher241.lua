local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head41"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 12.563750500219417
MaxFireSpeed = 3250.1
EnergyFireCost = 15820.498323834681
MetalFireCost = 551.8778485058608
ReloadTime = 15.6328125
Projectile = "_silomissile241"
FireStdDev =0.0011047464076089965
FireStdDevAuto =0.0011047464076089965
