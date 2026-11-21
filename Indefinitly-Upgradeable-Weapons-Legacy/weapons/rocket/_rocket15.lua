local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base15",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base15"
NodeEffects = {}
MinFireSpeed = 850.0
MaxFireSpeed = 850.1
EnergyFireCost = 3352.662248955585
MetalFireCost = 83.81655622388962
ReloadTime = 10.59375
Projectile = "_rocket15"
