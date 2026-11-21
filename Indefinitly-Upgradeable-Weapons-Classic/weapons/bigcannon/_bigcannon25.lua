local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel25",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel25"
MinFireSpeed = 7800.0
MaxFireSpeed = 8800.1
EnergyFireCost = 17000.0
MetalFireCost = 3400.0
ReloadTime = 32.1875
Projectile = "_bigcannon25"
FireStdDev =0.0010152559799477046
FireStdDevAuto =0.0005076279899738523
