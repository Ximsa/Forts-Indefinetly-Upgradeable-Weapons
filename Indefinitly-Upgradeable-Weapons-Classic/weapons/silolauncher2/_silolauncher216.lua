local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head16"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 175.00746228045168
MaxFireSpeed = 2000.1
EnergyFireCost = 6315.710277233634
MetalFireCost = 220.31547478721973
ReloadTime = 20.125
Projectile = "_silomissile216"
FireStdDev =0.011969602468458171
FireStdDevAuto =0.011969602468458171
