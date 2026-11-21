local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel52"
NodeEffects = {}
MinFireSpeed = 6.957596529882162
MaxFireSpeed = 24650.1
EnergyFireCost = 247919.29089926928
MetalFireCost = 4958.385817985387
ReloadTime = 74.21875
Projectile = "_atomcannon52"
FireStdDev =7.744137526818735e-05
FireStdDevAuto =8.51855127950061e-05
