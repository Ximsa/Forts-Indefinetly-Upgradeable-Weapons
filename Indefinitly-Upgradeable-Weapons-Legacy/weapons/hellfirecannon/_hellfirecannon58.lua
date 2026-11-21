local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel58"
NodeEffects = {}
MinFireSpeed = 23100.0
MaxFireSpeed = 23100.1
EnergyFireCost = 34522.44698954668
MetalFireCost = 863.0611747386668
ReloadTime = 14.21875
Projectile = "_hellfirecannon58"
FireStdDev =4.37136374464031e-05
FireStdDevAuto =5.2456364935683723e-05
