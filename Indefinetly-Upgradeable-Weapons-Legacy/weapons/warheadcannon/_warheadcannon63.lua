local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel63"
NodeEffects = {}
MinFireSpeed = 1350.0
MaxFireSpeed = 1350.1
EnergyFireCost = 38852.7368877367
MetalFireCost = 971.3184221934172
ReloadTime = 13.203125
Projectile = "_missile263"
