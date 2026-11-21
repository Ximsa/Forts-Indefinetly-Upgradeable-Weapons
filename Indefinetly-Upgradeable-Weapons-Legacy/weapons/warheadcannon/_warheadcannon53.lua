local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel53"
NodeEffects = {}
MinFireSpeed = 1150.0
MaxFireSpeed = 1150.1
EnergyFireCost = 30515.16357834845
MetalFireCost = 762.8790894587111
ReloadTime = 15.234375
Projectile = "_missile253"
