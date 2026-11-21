local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base35"
NodeEffects = {}
MinFireSpeed = 13800.0
MaxFireSpeed = 13800.1
EnergyFireCost = 920.433541707038
MetalFireCost = 12.2724472227605
ReloadTime = 1.52578125
Projectile = "_star35"
FireStdDev =0.0002348550780732242
FireStdDevAuto =0.0009394203122928968
