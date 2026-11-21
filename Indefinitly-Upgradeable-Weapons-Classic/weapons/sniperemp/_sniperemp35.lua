local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head35"
NodeEffects = {}
MinFireSpeed = 20200.0
MaxFireSpeed = 20200.1
EnergyFireCost = 18408.67083414076
MetalFireCost = 184.08670834140764
ReloadTime = 21.796875
Projectile = "_sniperemp35"
FireStdDev =3.914251301220404e-05
FireStdDevAuto =0.00015657005204881616
