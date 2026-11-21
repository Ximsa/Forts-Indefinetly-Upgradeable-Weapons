local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel57"
NodeEffects = {}
MinFireSpeed = 1230.0
MaxFireSpeed = 1230.1
EnergyFireCost = 33695.94780509212
MetalFireCost = 842.3986951273026
ReloadTime = 14.421875
Projectile = "_missile257"
