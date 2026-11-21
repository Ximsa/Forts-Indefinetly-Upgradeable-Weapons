local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel54"
NodeEffects = {}
MinFireSpeed = 1170.0
MaxFireSpeed = 1170.1
EnergyFireCost = 31291.963009260144
MetalFireCost = 782.2990752315035
ReloadTime = 15.03125
Projectile = "_missile254"
