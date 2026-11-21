local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel22"
NodeEffects = {}
MinFireSpeed = 530.0
MaxFireSpeed = 530.1
EnergyFireCost = 11543.549691962702
MetalFireCost = 288.5887422990675
ReloadTime = 21.53125
Projectile = "_missile222"
