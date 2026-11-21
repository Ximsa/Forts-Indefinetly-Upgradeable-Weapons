local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel19"
NodeEffects = {}
MinFireSpeed = 470.0
MaxFireSpeed = 470.1
EnergyFireCost = 10146.334421301304
MetalFireCost = 253.65836053253258
ReloadTime = 22.140625
Projectile = "_missile219"
