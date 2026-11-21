local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel42",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel42"
MinFireSpeed = 11200.0
MaxFireSpeed = 12200.1
EnergyFireCost = 25500.0
MetalFireCost = 5100.0
ReloadTime = 26.875
Projectile = "_bigcannon42"
FireStdDev =0.0002008629832016357
FireStdDevAuto =0.00010043149160081785
