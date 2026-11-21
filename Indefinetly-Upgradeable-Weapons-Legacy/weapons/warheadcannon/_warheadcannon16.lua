local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel16"
NodeEffects = {}
MinFireSpeed = 410.0
MaxFireSpeed = 410.1
EnergyFireCost = 8812.61899148879
MetalFireCost = 220.31547478721973
ReloadTime = 22.75
Projectile = "_missile216"
