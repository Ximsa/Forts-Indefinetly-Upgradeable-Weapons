local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel54"
NodeEffects = {}
MinFireSpeed = 5.635653189204551
MaxFireSpeed = 25450.1
EnergyFireCost = 260766.35841050115
MetalFireCost = 5215.327168210025
ReloadTime = 72.265625
Projectile = "_atomcannon54"
FireStdDev =6.40011365852788e-05
FireStdDevAuto =7.040125024380668e-05
