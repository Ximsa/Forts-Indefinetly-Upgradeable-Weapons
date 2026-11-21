local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel3",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel3"
MinFireSpeed = 3400.0
MaxFireSpeed = 4400.1
EnergyFireCost = 6000.0
MetalFireCost = 1200.0
ReloadTime = 39.0625
Projectile = "_bigcannon3"
FireStdDev =0.008264462809917354
FireStdDevAuto =0.004132231404958677
