local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel37"
NodeEffects = {}
MinFireSpeed = 33.792599317408786
MaxFireSpeed = 18650.1
EnergyFireCost = 163276.0300175877
MetalFireCost = 3265.5206003517555
ReloadTime = 88.8671875
Projectile = "_atomcannon37"
FireStdDev =0.00032349184307606645
FireStdDevAuto =0.0003558410273836731
