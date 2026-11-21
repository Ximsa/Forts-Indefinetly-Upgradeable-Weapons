local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel7",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel7"
MinFireSpeed = 4200.0
MaxFireSpeed = 5200.1
EnergyFireCost = 8000.0
MetalFireCost = 1600.0
ReloadTime = 37.8125
Projectile = "_bigcannon7"
FireStdDev =0.005644739300537772
FireStdDevAuto =0.002822369650268886
