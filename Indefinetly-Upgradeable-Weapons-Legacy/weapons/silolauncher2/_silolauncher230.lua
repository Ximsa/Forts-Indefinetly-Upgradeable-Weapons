local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head30"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 40.036093926593104
MaxFireSpeed = 2700.1
EnergyFireCost = 11182.40212799608
MetalFireCost = 390.0837951626538
ReloadTime = 17.609375
Projectile = "_silomissile230"
FireStdDev =0.0031519704315642384
FireStdDevAuto =0.0031519704315642384
