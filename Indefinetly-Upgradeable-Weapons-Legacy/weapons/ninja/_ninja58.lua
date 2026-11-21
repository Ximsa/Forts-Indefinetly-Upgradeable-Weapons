local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base58"
NodeEffects = {}
MinFireSpeed = 18400.0
MaxFireSpeed = 18400.1
EnergyFireCost = 1726.1223494773335
MetalFireCost = 23.01496465969775
ReloadTime = 1.1484375
Projectile = "_star58"
FireStdDev =2.622818246784185e-05
FireStdDevAuto =0.0001049127298713674
