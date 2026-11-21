local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base54",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base54"
NodeEffects = {}
MinFireSpeed = 1825.0
MaxFireSpeed = 1825.1
EnergyFireCost = 12516.785203704056
MetalFireCost = 312.91963009260144
ReloadTime = 6.9375
Projectile = "_rocket54"
