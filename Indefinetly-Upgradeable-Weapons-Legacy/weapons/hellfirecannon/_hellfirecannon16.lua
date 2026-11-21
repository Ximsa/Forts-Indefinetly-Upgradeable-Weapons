local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel16"
NodeEffects = {}
MinFireSpeed = 10500.0
MaxFireSpeed = 10500.1
EnergyFireCost = 8812.61899148879
MetalFireCost = 220.31547478721973
ReloadTime = 22.75
Projectile = "_hellfirecannon16"
FireStdDev =0.002393920493691634
FireStdDevAuto =0.002872704592429961
