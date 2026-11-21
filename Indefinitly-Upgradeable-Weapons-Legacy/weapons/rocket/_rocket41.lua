local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base41",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base41"
NodeEffects = {}
MinFireSpeed = 1500.0
MaxFireSpeed = 1500.1
EnergyFireCost = 8830.045576093773
MetalFireCost = 220.75113940234442
ReloadTime = 8.15625
Projectile = "_rocket41"
