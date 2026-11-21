local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head23"
NodeEffects = {}
MinFireSpeed = 16600.0
MaxFireSpeed = 16600.1
EnergyFireCost = 1603.1890207866156
MetalFireCost = 40.079725519665395
ReloadTime = 0.73828125
Projectile = "_sniperrifle23"
FireStdDev =0.0007984988282288695
FireStdDevAuto =0.001596997656457739
