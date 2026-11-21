local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel5"
NodeEffects = {}
MinFireSpeed = 9600.0
MaxFireSpeed = 9600.1
EnergyFireCost = 2283.8524597883224
MetalFireCost = 58.93812799453735
ReloadTime = 5.28515625
Projectile = "_cannon88he5"
FireStdDev =0.0034150672768253525
FireStdDevAuto =0.0034150672768253525
