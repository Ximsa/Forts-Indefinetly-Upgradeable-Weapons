local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/rocket.lua")
path = tmp
Sprites={{Name = "rocket-base49",States={Normal={Frames={{texture="mods/weapon_pack/weapons/rocket/base.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="rocket-base49"
NodeEffects = {}
MinFireSpeed = 1700.0
MaxFireSpeed = 1700.1
EnergyFireCost = 11010.259592127104
MetalFireCost = 275.2564898031777
ReloadTime = 7.40625
Projectile = "_rocket49"
