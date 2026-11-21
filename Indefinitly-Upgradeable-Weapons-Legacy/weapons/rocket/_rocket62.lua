local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base62",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base62"
NodeEffects = {}
MinFireSpeed = 2025.0
MaxFireSpeed = 2025.1
EnergyFireCost = 15183.847143477833
MetalFireCost = 379.59617858694594
ReloadTime = 6.1875
Projectile = "_rocket62"
