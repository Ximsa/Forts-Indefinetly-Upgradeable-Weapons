local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel47"
NodeEffects = {}
MinFireSpeed = 1030.0
MaxFireSpeed = 1030.1
EnergyFireCost = 26098.996029202735
MetalFireCost = 652.4749007300683
ReloadTime = 16.453125
Projectile = "_missile247"
