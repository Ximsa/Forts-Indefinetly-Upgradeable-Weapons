local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel64"
NodeEffects = {}
MinFireSpeed = 33200.0
MaxFireSpeed = 33200.1
EnergyFireCost = 20542.56896583057
MetalFireCost = 530.1308120214343
ReloadTime = 2.75
Projectile = "_cannon88he64"
FireStdDev =1.233760436315856e-05
FireStdDevAuto =1.233760436315856e-05
