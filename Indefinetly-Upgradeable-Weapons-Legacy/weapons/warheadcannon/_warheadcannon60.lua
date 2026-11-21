local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel60"
NodeEffects = {}
MinFireSpeed = 1290.0
MaxFireSpeed = 1290.1
EnergyFireCost = 36214.389289754574
MetalFireCost = 905.359732243864
ReloadTime = 13.8125
Projectile = "_missile260"
