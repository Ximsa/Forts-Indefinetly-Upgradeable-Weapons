local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/silolauncher2.lua")
path = tmp
Sprites={{Name = "silolauncherswarm2-head43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/silolauncher/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="silolauncherswarm2-head43"
FireEffect = "effects/warhead_launch.lua"NodeEffects = {}
MinFireSpeed = 10.17663790517773
MaxFireSpeed = 3350.1
EnergyFireCost = 16752.110697803106
MetalFireCost = 584.3759545745268
ReloadTime = 15.2734375
Projectile = "_silomissile243"
FireStdDev =0.0009130135600074349
FireStdDevAuto =0.0009130135600074349
