local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel30"
NodeEffects = {}
MinFireSpeed = 14700.0
MaxFireSpeed = 14700.1
EnergyFireCost = 15603.351806506153
MetalFireCost = 390.0837951626538
ReloadTime = 19.90625
Projectile = "_hellfirecannon30"
FireStdDev =0.0006303940863128477
FireStdDevAuto =0.0007564729035754172
