local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head18"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 141.75604444716586
MaxFireSpeed = 2100.1
EnergyFireCost = 6947.977519851587
MetalFireCost = 242.37130883203207
ReloadTime = 19.765625
Projectile = "_silomissile218"
FireStdDev =0.009892233445006752
FireStdDevAuto =0.009892233445006752
