local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel11"
NodeEffects = {}
MinFireSpeed = 310.0
MaxFireSpeed = 310.1
EnergyFireCost = 6723.091993385893
MetalFireCost = 168.0772998346473
ReloadTime = 23.765625
Projectile = "_missile211"
