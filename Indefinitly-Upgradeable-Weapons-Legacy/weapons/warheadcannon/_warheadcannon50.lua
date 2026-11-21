local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel50"
NodeEffects = {}
MinFireSpeed = 1090.0
MaxFireSpeed = 1090.1
EnergyFireCost = 28255.73724563523
MetalFireCost = 706.3934311408806
ReloadTime = 15.84375
Projectile = "_missile250"
