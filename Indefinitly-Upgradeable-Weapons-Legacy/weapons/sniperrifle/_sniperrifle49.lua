local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head49"
NodeEffects = {}
MinFireSpeed = 24400.0
MaxFireSpeed = 24400.1
EnergyFireCost = 3670.086530709035
MetalFireCost = 91.75216326772589
ReloadTime = 0.55546875
Projectile = "_sniperrifle49"
FireStdDev =6.699840581327227e-05
FireStdDevAuto =0.00013399681162654453
