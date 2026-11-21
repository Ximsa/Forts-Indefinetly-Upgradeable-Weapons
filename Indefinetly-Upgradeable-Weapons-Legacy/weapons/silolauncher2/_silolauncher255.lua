local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head55"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 2.8741831264943225
MaxFireSpeed = 3950.1
EnergyFireCost = 22991.31161741721
MetalFireCost = 802.0224982819957
ReloadTime = 13.1171875
Projectile = "_silomissile255"
FireStdDev =0.0002909142572058126
FireStdDevAuto =0.0002909142572058126
