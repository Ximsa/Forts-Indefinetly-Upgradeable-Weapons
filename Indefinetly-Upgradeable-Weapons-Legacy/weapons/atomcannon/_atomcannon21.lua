local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel21",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel21"
NodeEffects = {}
MinFireSpeed = 182.364981885854
MaxFireSpeed = 12250.1
EnergyFireCost = 92254.76670328369
MetalFireCost = 1845.0953340656743
ReloadTime = 104.4921875
Projectile = "_atomcannon21"
FireStdDev =0.0014864362802414347
FireStdDevAuto =0.0016350799082655784
