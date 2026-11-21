local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head36"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 21.276821792442572
MaxFireSpeed = 3000.1
EnergyFireCost = 13614.019526412354
MetalFireCost = 474.90765789810524
ReloadTime = 16.53125
Projectile = "_silomissile236"
FireStdDev =0.0017792051369183658
FireStdDevAuto =0.0017792051369183658
