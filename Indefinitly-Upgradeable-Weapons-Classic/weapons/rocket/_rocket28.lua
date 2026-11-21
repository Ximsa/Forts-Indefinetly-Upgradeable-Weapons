local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base28",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base28"
NodeEffects = {}
MinFireSpeed = 1175.0
MaxFireSpeed = 1175.1
EnergyFireCost = 5816.286769178622
MetalFireCost = 145.4071692294656
ReloadTime = 9.375
Projectile = "_rocket28"
