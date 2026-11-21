local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base12",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base12"
NodeEffects = {}
MinFireSpeed = 775.0
MaxFireSpeed = 775.1
EnergyFireCost = 2851.2561223130187
MetalFireCost = 71.28140305782547
ReloadTime = 10.875
Projectile = "_rocket12"
