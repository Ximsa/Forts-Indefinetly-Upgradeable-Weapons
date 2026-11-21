local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel58"
NodeEffects = {}
MinFireSpeed = 1250.0
MaxFireSpeed = 1250.1
EnergyFireCost = 34522.44698954668
MetalFireCost = 863.0611747386668
ReloadTime = 14.21875
Projectile = "_missile258"
