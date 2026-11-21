local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel11",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel11"
MinFireSpeed = 5000.0
MaxFireSpeed = 6000.1
EnergyFireCost = 10000.0
MetalFireCost = 2000.0
ReloadTime = 36.5625
Projectile = "_bigcannon11"
FireStdDev =0.0038554328942953147
FireStdDevAuto =0.0019277164471476573
