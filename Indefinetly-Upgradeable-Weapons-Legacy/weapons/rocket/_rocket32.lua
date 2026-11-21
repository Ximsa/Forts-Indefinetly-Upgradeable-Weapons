local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base32",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base32"
NodeEffects = {}
MinFireSpeed = 1275.0
MaxFireSpeed = 1275.1
EnergyFireCost = 6679.781385008641
MetalFireCost = 166.9945346252161
ReloadTime = 9.0
Projectile = "_rocket32"
