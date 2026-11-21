local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base34"
NodeEffects = {}
MinFireSpeed = 13600.0
MaxFireSpeed = 13600.1
EnergyFireCost = 891.5037949115451
MetalFireCost = 11.886717265487261
ReloadTime = 1.5421875
Projectile = "_star34"
FireStdDev =0.00025834058588054663
FireStdDevAuto =0.0010333623435221865
