local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel43"
NodeEffects = {}
MinFireSpeed = 950.0
MaxFireSpeed = 950.1
EnergyFireCost = 23375.03818298108
MetalFireCost = 584.3759545745268
ReloadTime = 17.265625
Projectile = "_missile243"
