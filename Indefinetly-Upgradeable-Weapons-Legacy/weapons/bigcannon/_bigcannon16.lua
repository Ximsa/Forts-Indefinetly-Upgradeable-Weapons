local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel16",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel16"
MinFireSpeed = 6000.0
MaxFireSpeed = 7000.1
EnergyFireCost = 12500.0
MetalFireCost = 2500.0
ReloadTime = 35.0
Projectile = "_bigcannon16"
FireStdDev =0.002393920493691634
FireStdDevAuto =0.001196960246845817
