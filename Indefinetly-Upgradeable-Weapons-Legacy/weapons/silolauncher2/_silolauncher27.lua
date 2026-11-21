local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head7"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 451.72485
MaxFireSpeed = 1550.1
EnergyFireCost = 3701.0548106102215
MetalFireCost = 129.10656316082168
ReloadTime = 21.7421875
Projectile = "_silomissile27"
FireStdDev =0.028223696502688862
FireStdDevAuto =0.028223696502688862
