local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head55"
NodeEffects = {}
MinFireSpeed = 26200.0
MaxFireSpeed = 26200.1
EnergyFireCost = 4277.453324170645
MetalFireCost = 106.93633310426611
ReloadTime = 0.51328125
Projectile = "_sniperrifle55"
FireStdDev =3.781885343675562e-05
FireStdDevAuto =7.563770687351124e-05
