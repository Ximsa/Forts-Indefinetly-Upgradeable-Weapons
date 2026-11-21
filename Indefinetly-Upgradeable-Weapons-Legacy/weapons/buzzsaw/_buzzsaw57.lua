local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base57",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base57"
NodeEffects = {}
MinFireSpeed = 66000.0
MaxFireSpeed = 66000.1
EnergyFireCost = 5514.025096931864
ReloadTime = 8.5421875
Projectile = "_buzzsaw57"
