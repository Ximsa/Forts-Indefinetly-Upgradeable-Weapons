local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel39"
NodeEffects = {}
MinFireSpeed = 870.0
MaxFireSpeed = 870.1
EnergyFireCost = 20814.879692118404
MetalFireCost = 520.37199230296
ReloadTime = 18.078125
Projectile = "_missile239"
