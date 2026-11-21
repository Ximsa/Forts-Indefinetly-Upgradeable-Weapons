local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel18"
NodeEffects = {}
MinFireSpeed = 11100.0
MaxFireSpeed = 11100.1
EnergyFireCost = 9694.852353281283
MetalFireCost = 242.37130883203207
ReloadTime = 22.34375
Projectile = "_hellfirecannon18"
FireStdDev =0.00197844668900135
FireStdDevAuto =0.0023741360268016197
