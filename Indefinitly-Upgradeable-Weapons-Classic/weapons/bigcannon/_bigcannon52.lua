local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel52",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel52"
MinFireSpeed = 13200.0
MaxFireSpeed = 14200.1
EnergyFireCost = 30500.0
MetalFireCost = 6100.0
ReloadTime = 23.75
Projectile = "_bigcannon52"
FireStdDev =7.744137526818735e-05
FireStdDevAuto =3.872068763409368e-05
