dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head14",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head14"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 530.4881639311728
MetalFireCost = 39.786612294837965
ReloadTime = 8.015625
MinFireAngle = 31.875
Projectile = "_mortar214"
