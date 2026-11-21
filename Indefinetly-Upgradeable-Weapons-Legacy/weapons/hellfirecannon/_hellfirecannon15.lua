local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel15"
NodeEffects = {}
MinFireSpeed = 10200.0
MaxFireSpeed = 10200.1
EnergyFireCost = 8381.655622388962
MetalFireCost = 209.54139055972405
ReloadTime = 22.953125
Projectile = "_hellfirecannon15"
FireStdDev =0.0026333125430607974
FireStdDevAuto =0.003159975051672957
