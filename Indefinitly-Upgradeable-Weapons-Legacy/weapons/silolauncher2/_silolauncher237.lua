local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head37"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 19.149139613198315
MaxFireSpeed = 3050.1
EnergyFireCost = 14041.738581512547
MetalFireCost = 489.8280900527631
ReloadTime = 16.3515625
Projectile = "_silomissile237"
FireStdDev =0.0016174592153803324
FireStdDevAuto =0.0016174592153803324
