local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel29"
NodeEffects = {}
MinFireSpeed = 19200.0
MaxFireSpeed = 19200.1
EnergyFireCost = 7785.089739514926
MetalFireCost = 200.9055416649013
ReloadTime = 4.25390625
Projectile = "_cannon88he29"
FireStdDev =0.00034671674747206624
FireStdDevAuto =0.00034671674747206624
