local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base27"
NodeEffects = {}
MinFireSpeed = 12200.0
MaxFireSpeed = 12200.1
EnergyFireCost = 701.081448514292
MetalFireCost = 9.347752646857225
ReloadTime = 1.6570312500000002
Projectile = "_star27"
FireStdDev =0.00050343271732944
FireStdDevAuto =0.00201373086931776
