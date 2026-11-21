local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel48"
NodeEffects = {}
MinFireSpeed = 10.604475735226583
MaxFireSpeed = 23050.1
EnergyFireCost = 223389.9403513252
MetalFireCost = 4467.7988070265055
ReloadTime = 78.125
Projectile = "_atomcannon48"
FireStdDev =0.00011338191753015314
FireStdDevAuto =0.00012472010928316846
