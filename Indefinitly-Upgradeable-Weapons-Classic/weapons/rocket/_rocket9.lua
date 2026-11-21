local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base9",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base9"
NodeEffects = {}
MinFireSpeed = 700.0
MaxFireSpeed = 700.1
EnergyFireCost = 2372.6376146659045
MetalFireCost = 59.31594036664762
ReloadTime = 11.15625
Projectile = "_rocket9"
