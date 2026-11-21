local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head16"
NodeEffects = {}
MinFireSpeed = 14500.0
MaxFireSpeed = 14500.1
EnergyFireCost = 1175.0158655318385
MetalFireCost = 29.375396638295964
ReloadTime = 0.7875
Projectile = "_sniperrifle16"
FireStdDev =0.001556048320899562
FireStdDevAuto =0.003112096641799124
