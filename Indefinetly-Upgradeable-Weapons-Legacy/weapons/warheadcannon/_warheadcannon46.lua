local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel46"
NodeEffects = {}
MinFireSpeed = 1010.0
MaxFireSpeed = 1010.1
EnergyFireCost = 25402.088397984233
MetalFireCost = 635.0522099496056
ReloadTime = 16.65625
Projectile = "_missile246"
