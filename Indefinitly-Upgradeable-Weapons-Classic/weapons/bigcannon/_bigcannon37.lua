local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel37",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel37"
MinFireSpeed = 10200.0
MaxFireSpeed = 11200.1
EnergyFireCost = 23000.0
MetalFireCost = 4600.0
ReloadTime = 28.4375
Projectile = "_bigcannon37"
FireStdDev =0.00032349184307606645
FireStdDevAuto =0.00016174592153803322
