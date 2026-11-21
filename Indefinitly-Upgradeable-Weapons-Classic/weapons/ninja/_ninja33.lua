local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base33"
NodeEffects = {}
MinFireSpeed = 13400.0
MaxFireSpeed = 13400.1
EnergyFireCost = 863.0191211436752
MetalFireCost = 11.506921615248997
ReloadTime = 1.55859375
Projectile = "_star33"
FireStdDev =0.0002841746444686013
FireStdDevAuto =0.0011366985778744052
