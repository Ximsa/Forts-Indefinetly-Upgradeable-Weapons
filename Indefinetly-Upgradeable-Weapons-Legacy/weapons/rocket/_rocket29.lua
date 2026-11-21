local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base29",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base29"
NodeEffects = {}
MinFireSpeed = 1200.0
MaxFireSpeed = 1200.1
EnergyFireCost = 6027.1662499470385
MetalFireCost = 150.679156248676
ReloadTime = 9.28125
Projectile = "_rocket29"
