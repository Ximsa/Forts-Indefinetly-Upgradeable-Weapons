local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel30"
NodeEffects = {}
MinFireSpeed = 690.0
MaxFireSpeed = 690.1
EnergyFireCost = 15603.351806506153
MetalFireCost = 390.0837951626538
ReloadTime = 19.90625
Projectile = "_missile230"
