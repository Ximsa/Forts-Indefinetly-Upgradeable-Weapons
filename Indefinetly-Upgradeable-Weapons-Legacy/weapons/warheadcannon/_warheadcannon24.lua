local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel24"
NodeEffects = {}
MinFireSpeed = 570.0
MaxFireSpeed = 570.1
EnergyFireCost = 12511.79136927305
MetalFireCost = 312.7947842318262
ReloadTime = 21.125
Projectile = "_missile224"
