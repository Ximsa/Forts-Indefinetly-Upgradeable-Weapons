local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base11",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base11"
NodeEffects = {}
MinFireSpeed = 750.0
MaxFireSpeed = 750.1
EnergyFireCost = 2689.236797354357
MetalFireCost = 67.23091993385893
ReloadTime = 10.96875
Projectile = "_rocket11"
