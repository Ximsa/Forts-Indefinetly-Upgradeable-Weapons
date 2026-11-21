local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base5",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base5"
NodeEffects = {}
MinFireSpeed = 600.0
MaxFireSpeed = 600.1
EnergyFireCost = 1768.1438398361206
MetalFireCost = 44.203595995903015
ReloadTime = 11.53125
Projectile = "_rocket5"
