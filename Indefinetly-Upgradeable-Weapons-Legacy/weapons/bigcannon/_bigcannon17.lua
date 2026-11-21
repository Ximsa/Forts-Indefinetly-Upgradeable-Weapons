local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel17",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel17"
MinFireSpeed = 6200.0
MaxFireSpeed = 7200.1
EnergyFireCost = 13000.0
MetalFireCost = 2600.0
ReloadTime = 34.6875
Projectile = "_bigcannon17"
FireStdDev =0.0021762913579014853
FireStdDevAuto =0.0010881456789507426
