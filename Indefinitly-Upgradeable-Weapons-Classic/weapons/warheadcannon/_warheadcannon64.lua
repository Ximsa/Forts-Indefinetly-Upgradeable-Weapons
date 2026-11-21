local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel64"
NodeEffects = {}
MinFireSpeed = 1370.0
MaxFireSpeed = 1370.1
EnergyFireCost = 39759.81090160758
MetalFireCost = 993.9952725401894
ReloadTime = 13.0
Projectile = "_missile264"
