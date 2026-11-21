local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base30",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base30"
NodeEffects = {}
MinFireSpeed = 1225.0
MaxFireSpeed = 1225.1
EnergyFireCost = 6241.340722602461
MetalFireCost = 156.03351806506157
ReloadTime = 9.1875
Projectile = "_rocket30"
