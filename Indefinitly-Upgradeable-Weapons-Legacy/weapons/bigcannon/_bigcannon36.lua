local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel36",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel36"
MinFireSpeed = 10000.0
MaxFireSpeed = 11000.1
EnergyFireCost = 22500.0
MetalFireCost = 4500.0
ReloadTime = 28.75
Projectile = "_bigcannon36"
FireStdDev =0.0003558410273836731
FireStdDevAuto =0.00017792051369183655
