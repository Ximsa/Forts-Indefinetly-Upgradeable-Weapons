local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel7"
NodeEffects = {}
MinFireSpeed = 230.0
MaxFireSpeed = 230.1
EnergyFireCost = 5164.262526432867
MetalFireCost = 129.10656316082168
ReloadTime = 24.578125
Projectile = "_missile27"
