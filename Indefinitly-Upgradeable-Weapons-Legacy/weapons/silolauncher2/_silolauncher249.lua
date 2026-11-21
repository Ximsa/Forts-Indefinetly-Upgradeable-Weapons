local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head49"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 5.408282624965559
MaxFireSpeed = 3650.1
EnergyFireCost = 19726.715102561066
MetalFireCost = 688.141224507944
ReloadTime = 14.1953125
Projectile = "_silomissile249"
FireStdDev =0.0005153723524097868
FireStdDevAuto =0.0005153723524097868
