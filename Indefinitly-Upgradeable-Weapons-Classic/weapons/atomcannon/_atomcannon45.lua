local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel45"
NodeEffects = {}
MinFireSpeed = 14.546605946812868
MaxFireSpeed = 21850.1
EnergyFireCost = 205965.85352192188
MetalFireCost = 4119.317070438439
ReloadTime = 81.0546875
Projectile = "_atomcannon45"
FireStdDev =0.00015091133223263384
FireStdDevAuto =0.00016600246545589724
