local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head47"
NodeEffects = {}
MinFireSpeed = 23800.0
MaxFireSpeed = 23800.1
EnergyFireCost = 26098.996029202735
MetalFireCost = 260.98996029202743
ReloadTime = 18.984375
Projectile = "_sniperemp47"
FireStdDev =1.2472010928316842e-05
FireStdDevAuto =4.988804371326737e-05
