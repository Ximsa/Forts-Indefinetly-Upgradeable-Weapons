local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel47"
NodeEffects = {}
MinFireSpeed = 19800.0
MaxFireSpeed = 19800.1
EnergyFireCost = 26098.996029202735
MetalFireCost = 652.4749007300683
ReloadTime = 16.453125
Projectile = "_hellfirecannon47"
FireStdDev =0.00012472010928316846
FireStdDevAuto =0.00014966413113980215
