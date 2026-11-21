local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel17"
NodeEffects = {}
MinFireSpeed = 430.0
MaxFireSpeed = 430.1
EnergyFireCost = 9250.316163230802
MetalFireCost = 231.25790408077003
ReloadTime = 22.546875
Projectile = "_missile217"
