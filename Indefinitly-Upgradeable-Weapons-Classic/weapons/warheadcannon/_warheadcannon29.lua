local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel29"
NodeEffects = {}
MinFireSpeed = 670.0
MaxFireSpeed = 670.1
EnergyFireCost = 15067.915624867597
MetalFireCost = 376.6978906216899
ReloadTime = 20.109375
Projectile = "_missile229"
