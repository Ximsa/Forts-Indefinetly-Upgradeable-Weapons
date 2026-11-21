local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/warheadcannon.lua")
path = tmp
Sprites={{Name = "warheadcannon-barrel41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/warheadcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="warheadcannon-barrel41"
NodeEffects = {}
MinFireSpeed = 910.0
MaxFireSpeed = 910.1
EnergyFireCost = 22075.113940234438
MetalFireCost = 551.8778485058608
ReloadTime = 17.671875
Projectile = "_missile241"
