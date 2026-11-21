local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base12"
NodeEffects = {}
MinFireSpeed = 9200.0
MaxFireSpeed = 9200.1
EnergyFireCost = 356.40701528912734
MetalFireCost = 4.752093537188365
ReloadTime = 1.9031250000000002
Projectile = "_star12"
FireStdDev =0.0021029633968883527
FireStdDevAuto =0.00841185358755341
