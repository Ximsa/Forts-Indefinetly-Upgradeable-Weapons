local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel49"
NodeEffects = {}
MinFireSpeed = 1070.0
MaxFireSpeed = 1070.1
EnergyFireCost = 27525.648980317765
MetalFireCost = 688.141224507944
ReloadTime = 16.046875
Projectile = "_missile249"
