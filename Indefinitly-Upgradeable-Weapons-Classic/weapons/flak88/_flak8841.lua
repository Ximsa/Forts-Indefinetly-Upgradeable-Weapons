local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel41"
NodeEffects = {}
MinFireSpeed = 24000.0
MaxFireSpeed = 24000.1
EnergyFireCost = 11405.475535787793
MetalFireCost = 294.33485253645915
ReloadTime = 3.73828125
Projectile = "_cannon88he41"
FireStdDev =0.00011047464076089965
FireStdDevAuto =0.00011047464076089965
