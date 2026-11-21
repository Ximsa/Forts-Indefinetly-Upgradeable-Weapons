local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base39",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base39"
NodeEffects = {}
MinFireSpeed = 1450.0
MaxFireSpeed = 1450.1
EnergyFireCost = 8325.95187684736
MetalFireCost = 208.14879692118407
ReloadTime = 8.34375
Projectile = "_rocket39"
