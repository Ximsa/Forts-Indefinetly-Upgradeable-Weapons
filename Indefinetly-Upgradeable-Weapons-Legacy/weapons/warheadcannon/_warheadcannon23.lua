local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel23"
NodeEffects = {}
MinFireSpeed = 550.0
MaxFireSpeed = 550.1
EnergyFireCost = 12023.917655899619
MetalFireCost = 300.59794139749044
ReloadTime = 21.328125
Projectile = "_missile223"
