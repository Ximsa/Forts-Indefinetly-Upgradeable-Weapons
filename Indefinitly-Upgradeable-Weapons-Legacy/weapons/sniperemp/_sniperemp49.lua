local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head49"
NodeEffects = {}
MinFireSpeed = 24400.0
MaxFireSpeed = 24400.1
EnergyFireCost = 27525.648980317765
MetalFireCost = 275.2564898031777
ReloadTime = 18.515625
Projectile = "_sniperemp49"
FireStdDev =1.0307447048195735e-05
FireStdDevAuto =4.122978819278294e-05
