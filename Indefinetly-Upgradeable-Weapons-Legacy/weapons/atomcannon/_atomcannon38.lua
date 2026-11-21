local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel38"
NodeEffects = {}
MinFireSpeed = 30.413339385667907
MaxFireSpeed = 19050.1
EnergyFireCost = 168327.21798661252
MetalFireCost = 3366.544359732252
ReloadTime = 87.890625
Projectile = "_atomcannon38"
FireStdDev =0.00029408349370551494
FireStdDevAuto =0.00032349184307606645
