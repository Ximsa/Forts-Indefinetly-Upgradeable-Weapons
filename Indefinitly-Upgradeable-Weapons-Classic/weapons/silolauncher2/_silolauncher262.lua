local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head62"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 1.3747128794345425
MaxFireSpeed = 4300.1
EnergyFireCost = 27204.39279873112
MetalFireCost = 948.9904464673646
ReloadTime = 11.859375
Projectile = "_silomissile262"
FireStdDev =0.00014928501279421852
FireStdDevAuto =0.00014928501279421852
