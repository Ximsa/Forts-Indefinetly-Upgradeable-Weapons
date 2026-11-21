local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel27"
NodeEffects = {}
MinFireSpeed = 630.0
MaxFireSpeed = 630.1
EnergyFireCost = 14021.628970285841
MetalFireCost = 350.540724257146
ReloadTime = 20.515625
Projectile = "_missile227"
