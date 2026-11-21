local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel14"
NodeEffects = {}
MinFireSpeed = 370.0
MaxFireSpeed = 370.1
EnergyFireCost = 7957.322458967594
MetalFireCost = 198.93306147418983
ReloadTime = 23.15625
Projectile = "_missile214"
