local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Sprites={{Name = "buzzsaw_base43",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/buzzsaw/base.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="buzzsaw_base43"
NodeEffects = {}
MinFireSpeed = 52000.0
MaxFireSpeed = 52000.1
EnergyFireCost = 4063.518879770314
ReloadTime = 10.2265625
Projectile = "_buzzsaw43"
