local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel15"
NodeEffects = {}
MinFireSpeed = 390.0
MaxFireSpeed = 390.1
EnergyFireCost = 8381.655622388962
MetalFireCost = 209.54139055972405
ReloadTime = 22.953125
Projectile = "_missile215"
