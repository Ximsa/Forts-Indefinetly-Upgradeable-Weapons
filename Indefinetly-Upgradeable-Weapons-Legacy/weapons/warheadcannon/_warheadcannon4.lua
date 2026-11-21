local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel4"
NodeEffects = {}
MinFireSpeed = 170.0
MaxFireSpeed = 170.1
EnergyFireCost = 4056.969451904297
MetalFireCost = 101.42423629760742
ReloadTime = 25.1875
Projectile = "_missile24"
