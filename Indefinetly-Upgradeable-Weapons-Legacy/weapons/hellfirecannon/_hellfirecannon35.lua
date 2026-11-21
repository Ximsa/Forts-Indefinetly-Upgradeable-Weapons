local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel35"
NodeEffects = {}
MinFireSpeed = 16200.0
MaxFireSpeed = 16200.1
EnergyFireCost = 18408.67083414076
MetalFireCost = 460.216770853519
ReloadTime = 18.890625
Projectile = "_hellfirecannon35"
FireStdDev =0.00039142513012204046
FireStdDevAuto =0.00046971015614644855
