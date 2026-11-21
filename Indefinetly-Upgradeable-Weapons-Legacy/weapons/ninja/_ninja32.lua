local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base32"
NodeEffects = {}
MinFireSpeed = 13200.0
MaxFireSpeed = 13200.1
EnergyFireCost = 834.9726731260802
MetalFireCost = 11.132968975014398
ReloadTime = 1.5750000000000002
Projectile = "_star32"
FireStdDev =0.0003125921089154615
FireStdDevAuto =0.001250368435661846
