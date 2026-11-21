local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head46",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head46"
NodeEffects = {}
MinFireSpeed = 22.25630709862369
MaxFireSpeed = 15325.0
EnergyFireCost = 6773.89023946246
MetalFireCost = 169.34725598656155
ReloadTime = 6.40625
Projectile = "_mortar246"
FireStdDevAuto =1.0473556281705268e-05
