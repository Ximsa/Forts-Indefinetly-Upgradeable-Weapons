local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head63"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 1.2372415914910881
MaxFireSpeed = 4350.1
EnergyFireCost = 27844.461436211295
MetalFireCost = 971.3184221934172
ReloadTime = 11.6796875
Projectile = "_silomissile263"
FireStdDev =0.0001357136479947441
FireStdDevAuto =0.0001357136479947441
