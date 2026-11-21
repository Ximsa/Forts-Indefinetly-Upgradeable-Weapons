local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head15"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 194.4527358671685
MaxFireSpeed = 1950.1
EnergyFireCost = 6006.853196045424
MetalFireCost = 209.54139055972405
ReloadTime = 20.3046875
Projectile = "_silomissile215"
FireStdDev =0.01316656271530399
FireStdDevAuto =0.01316656271530399
