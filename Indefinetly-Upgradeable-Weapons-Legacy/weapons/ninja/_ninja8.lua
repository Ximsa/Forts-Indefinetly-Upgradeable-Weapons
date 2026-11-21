local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base8"
NodeEffects = {}
MinFireSpeed = 8400.0
MaxFireSpeed = 8400.1
EnergyFireCost = 277.24770642041904
MetalFireCost = 3.6966360856055873
ReloadTime = 1.96875
Projectile = "_star8"
FireStdDev =0.003078948709384238
FireStdDevAuto =0.012315794837536953
