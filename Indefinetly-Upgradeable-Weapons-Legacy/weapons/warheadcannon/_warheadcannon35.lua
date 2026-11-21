local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel35"
NodeEffects = {}
MinFireSpeed = 790.0
MaxFireSpeed = 790.1
EnergyFireCost = 18408.67083414076
MetalFireCost = 460.216770853519
ReloadTime = 18.890625
Projectile = "_missile235"
