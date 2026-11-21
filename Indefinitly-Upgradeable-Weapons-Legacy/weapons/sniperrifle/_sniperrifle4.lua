local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head4"
NodeEffects = {}
MinFireSpeed = 10900.0
MaxFireSpeed = 10900.1
EnergyFireCost = 540.9292602539062
MetalFireCost = 13.523231506347656
ReloadTime = 0.8718750000000001
Projectile = "_sniperrifle4"
FireStdDev =0.004883546205860253
FireStdDevAuto =0.009767092411720506
