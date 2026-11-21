local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel25"
NodeEffects = {}
MinFireSpeed = 13200.0
MaxFireSpeed = 13200.1
EnergyFireCost = 13007.288109417943
MetalFireCost = 325.18220273544847
ReloadTime = 20.921875
Projectile = "_hellfirecannon25"
FireStdDev =0.0010152559799477046
FireStdDevAuto =0.0012183071759372455
