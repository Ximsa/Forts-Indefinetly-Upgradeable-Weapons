local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel2"
NodeEffects = {}
MinFireSpeed = 130.0
MaxFireSpeed = 130.1
EnergyFireCost = 3346.875
MetalFireCost = 83.671875
ReloadTime = 25.59375
Projectile = "_missile22"
