local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel62"
NodeEffects = {}
MinFireSpeed = 1330.0
MaxFireSpeed = 1330.1
EnergyFireCost = 37959.6178586946
MetalFireCost = 948.9904464673646
ReloadTime = 13.40625
Projectile = "_missile262"
