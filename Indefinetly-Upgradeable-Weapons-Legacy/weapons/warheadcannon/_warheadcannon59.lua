local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel59"
NodeEffects = {}
MinFireSpeed = 1270.0
MaxFireSpeed = 1270.1
EnergyFireCost = 35361.86022375835
MetalFireCost = 884.0465055939584
ReloadTime = 14.015625
Projectile = "_missile259"
