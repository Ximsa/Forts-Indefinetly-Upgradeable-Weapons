local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base7",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base7"
NodeEffects = {}
MinFireSpeed = 650.0
MaxFireSpeed = 650.1
EnergyFireCost = 2065.705010573147
MetalFireCost = 51.64262526432867
ReloadTime = 11.34375
Projectile = "_rocket7"
