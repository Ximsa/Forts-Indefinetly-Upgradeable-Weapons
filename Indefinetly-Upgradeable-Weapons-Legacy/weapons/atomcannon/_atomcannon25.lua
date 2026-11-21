local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel25"
NodeEffects = {}
MinFireSpeed = 119.64966461530884
MaxFireSpeed = 13850.1
EnergyFireCost = 108394.06757848282
MetalFireCost = 2167.881351569657
ReloadTime = 100.5859375
Projectile = "_atomcannon25"
FireStdDev =0.0010152559799477046
FireStdDevAuto =0.0011167815779424752
