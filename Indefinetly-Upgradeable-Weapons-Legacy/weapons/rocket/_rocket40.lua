local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base40",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base40"
NodeEffects = {}
MinFireSpeed = 1475.0
MaxFireSpeed = 1475.1
EnergyFireCost = 8576.0448749231
MetalFireCost = 214.40112187307759
ReloadTime = 8.25
Projectile = "_rocket40"
