local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel56"
NodeEffects = {}
MinFireSpeed = 1210.0
MaxFireSpeed = 1210.1
EnergyFireCost = 32882.16399270608
MetalFireCost = 822.0540998176518
ReloadTime = 14.625
Projectile = "_missile256"
