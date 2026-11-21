local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head27"
NodeEffects = {}
MinFireSpeed = 17800.0
MaxFireSpeed = 17800.1
EnergyFireCost = 14021.628970285841
MetalFireCost = 140.21628970285843
ReloadTime = 23.671875
Projectile = "_sniperemp27"
FireStdDev =8.390545288824004e-05
FireStdDevAuto =0.0003356218115529602
