local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base19",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base19"
NodeEffects = {}
MinFireSpeed = 950.0
MaxFireSpeed = 950.1
EnergyFireCost = 4058.5337685205213
MetalFireCost = 101.46334421301303
ReloadTime = 10.21875
Projectile = "_rocket19"
