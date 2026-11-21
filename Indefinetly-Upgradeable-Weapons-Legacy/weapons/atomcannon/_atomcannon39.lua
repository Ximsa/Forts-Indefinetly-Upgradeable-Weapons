local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel39"
NodeEffects = {}
MinFireSpeed = 27.372005447101117
MaxFireSpeed = 19450.1
EnergyFireCost = 173457.33076765333
MetalFireCost = 3469.1466153530682
ReloadTime = 86.9140625
Projectile = "_atomcannon39"
FireStdDev =0.0002673486306413772
FireStdDevAuto =0.00029408349370551494
