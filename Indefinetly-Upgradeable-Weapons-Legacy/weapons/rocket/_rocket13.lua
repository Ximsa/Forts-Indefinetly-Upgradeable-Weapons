local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base13",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base13"
NodeEffects = {}
MinFireSpeed = 800.0
MaxFireSpeed = 800.1
EnergyFireCost = 3015.80699922416
MetalFireCost = 75.395174980604
ReloadTime = 10.78125
Projectile = "_rocket13"
