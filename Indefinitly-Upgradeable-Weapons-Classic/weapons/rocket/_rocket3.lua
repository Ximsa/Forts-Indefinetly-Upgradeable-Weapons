local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base3",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base3"
NodeEffects = {}
MinFireSpeed = 550.0
MaxFireSpeed = 550.1
EnergyFireCost = 1479.66796875
MetalFireCost = 36.99169921875
ReloadTime = 11.71875
Projectile = "_rocket3"
