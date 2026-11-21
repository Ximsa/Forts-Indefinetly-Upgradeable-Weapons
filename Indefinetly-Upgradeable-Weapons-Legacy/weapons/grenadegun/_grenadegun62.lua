local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head62"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 15950.0
MaxFireSpeed = 15950.1
EnergyFireCost = 44286.22083514369
MetalFireCost = 632.66029764491
ReloadTime = 12.890625
Projectile = "_grenade62"
FireStdDev =5.971400511768744e-05
FireStdDevAuto =2.985700255884372e-05
