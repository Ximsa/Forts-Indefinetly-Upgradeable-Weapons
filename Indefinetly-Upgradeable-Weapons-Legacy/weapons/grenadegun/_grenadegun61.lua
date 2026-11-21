local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/grenadegun.lua")
path = tmp
Sprites={{Name = "grenade-head61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/gatlinggun/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="grenade-head61"
FireEffect = "effects/fire_cannon.lua"
NodeEffects = {}
MinFireSpeed = 15750.0
MaxFireSpeed = 15750.1
EnergyFireCost = 43260.27897614148
MetalFireCost = 618.0039853734498
ReloadTime = 13.0859375
Projectile = "_grenade61"
FireStdDev =6.568540562945619e-05
FireStdDevAuto =3.2842702814728095e-05
