local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel47",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel47"
MinFireSpeed = 12200.0
MaxFireSpeed = 13200.1
EnergyFireCost = 28000.0
MetalFireCost = 5600.0
ReloadTime = 25.3125
Projectile = "_bigcannon47"
FireStdDev =0.00012472010928316846
FireStdDevAuto =6.236005464158423e-05
