local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel14"
NodeEffects = {}
MinFireSpeed = 381.27987424935003
MaxFireSpeed = 9450.1
EnergyFireCost = 66311.02049139662
MetalFireCost = 1326.2204098279321
ReloadTime = 111.328125
Projectile = "_atomcannon14"
FireStdDev =0.0028966437973668773
FireStdDevAuto =0.0031863081771035654
