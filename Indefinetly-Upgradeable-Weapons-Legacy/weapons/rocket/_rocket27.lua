local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base27",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base27"
NodeEffects = {}
MinFireSpeed = 1150.0
MaxFireSpeed = 1150.1
EnergyFireCost = 5608.651588114336
MetalFireCost = 140.21628970285843
ReloadTime = 9.46875
Projectile = "_rocket27"
