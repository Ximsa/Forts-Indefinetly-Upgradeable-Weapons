local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base21",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base21"
NodeEffects = {}
MinFireSpeed = 1000.0
MaxFireSpeed = 1000.1
EnergyFireCost = 4428.2288017576175
MetalFireCost = 110.70572004394045
ReloadTime = 10.03125
Projectile = "_rocket21"
