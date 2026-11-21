local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base44",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base44"
NodeEffects = {}
MinFireSpeed = 1575.0
MaxFireSpeed = 1575.1
EnergyFireCost = 9616.10926183606
MetalFireCost = 240.40273154590162
ReloadTime = 7.875
Projectile = "_rocket44"
