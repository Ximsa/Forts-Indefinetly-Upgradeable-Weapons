local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel22"
NodeEffects = {}
MinFireSpeed = 16400.0
MaxFireSpeed = 16400.1
EnergyFireCost = 5964.167340847397
MetalFireCost = 153.91399589283603
ReloadTime = 4.5546875
Projectile = "_cannon88he22"
FireStdDev =0.0006756528546551975
FireStdDevAuto =0.0006756528546551975
