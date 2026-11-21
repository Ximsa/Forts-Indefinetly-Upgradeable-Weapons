local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head30"
NodeEffects = {}
MinFireSpeed = 18700.0
MaxFireSpeed = 18700.1
EnergyFireCost = 15603.351806506153
MetalFireCost = 156.03351806506157
ReloadTime = 22.96875
Projectile = "_sniperemp30"
FireStdDev =6.303940863128477e-05
FireStdDevAuto =0.00025215763452513906
