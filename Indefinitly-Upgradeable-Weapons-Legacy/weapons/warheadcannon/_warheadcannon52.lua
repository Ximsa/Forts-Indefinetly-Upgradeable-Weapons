local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel52"
NodeEffects = {}
MinFireSpeed = 1130.0
MaxFireSpeed = 1130.1
EnergyFireCost = 29750.314907912318
MetalFireCost = 743.7578726978078
ReloadTime = 15.4375
Projectile = "_missile252"
