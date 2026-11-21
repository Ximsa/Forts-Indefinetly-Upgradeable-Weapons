local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel13"
NodeEffects = {}
MinFireSpeed = 350.0
MaxFireSpeed = 350.1
EnergyFireCost = 7539.5174980604
MetalFireCost = 188.48793745151
ReloadTime = 23.359375
Projectile = "_missile213"
