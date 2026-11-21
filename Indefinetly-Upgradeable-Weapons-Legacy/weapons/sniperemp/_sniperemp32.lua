local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head32"
NodeEffects = {}
MinFireSpeed = 19300.0
MaxFireSpeed = 19300.1
EnergyFireCost = 16699.453462521604
MetalFireCost = 166.9945346252161
ReloadTime = 22.5
Projectile = "_sniperemp32"
FireStdDev =5.20986848192436e-05
FireStdDevAuto =0.0002083947392769744
