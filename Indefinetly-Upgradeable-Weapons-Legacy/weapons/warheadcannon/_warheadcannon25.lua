local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel25"
NodeEffects = {}
MinFireSpeed = 590.0
MaxFireSpeed = 590.1
EnergyFireCost = 13007.288109417943
MetalFireCost = 325.18220273544847
ReloadTime = 20.921875
Projectile = "_missile225"
