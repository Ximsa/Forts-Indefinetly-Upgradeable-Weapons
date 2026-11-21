local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel32"
NodeEffects = {}
MinFireSpeed = 730.0
MaxFireSpeed = 730.1
EnergyFireCost = 16699.453462521604
MetalFireCost = 417.4863365630401
ReloadTime = 19.5
Projectile = "_missile232"
