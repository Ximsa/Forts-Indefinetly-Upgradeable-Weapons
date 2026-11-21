local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head17"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 157.50671605240652
MaxFireSpeed = 2050.1
EnergyFireCost = 6629.393250315409
MetalFireCost = 231.25790408077003
ReloadTime = 19.9453125
Projectile = "_silomissile217"
FireStdDev =0.010881456789507428
FireStdDevAuto =0.010881456789507428
