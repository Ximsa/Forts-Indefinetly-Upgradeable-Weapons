local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head20"
NodeEffects = {}
MinFireSpeed = 15700.0
MaxFireSpeed = 15700.1
EnergyFireCost = 1413.9827862178847
MetalFireCost = 35.34956965544712
ReloadTime = 0.759375
Projectile = "_sniperrifle20"
FireStdDev =0.0010628019403726256
FireStdDevAuto =0.0021256038807452513
