local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel21",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel21"
MinFireSpeed = 7000.0
MaxFireSpeed = 8000.1
EnergyFireCost = 15000.0
MetalFireCost = 3000.0
ReloadTime = 33.4375
Projectile = "_bigcannon21"
FireStdDev =0.0014864362802414347
FireStdDevAuto =0.0007432181401207174
