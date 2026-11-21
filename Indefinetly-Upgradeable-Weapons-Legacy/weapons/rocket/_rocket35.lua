local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base35",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base35"
NodeEffects = {}
MinFireSpeed = 1350.0
MaxFireSpeed = 1350.1
EnergyFireCost = 7363.468333656304
MetalFireCost = 184.08670834140764
ReloadTime = 8.71875
Projectile = "_rocket35"
