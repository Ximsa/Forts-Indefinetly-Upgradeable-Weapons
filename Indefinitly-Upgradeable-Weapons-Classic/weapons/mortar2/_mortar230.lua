dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head30",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head30"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 1040.2234537670768
MetalFireCost = 78.01675903253079
ReloadTime = 6.890625
MinFireAngle = 16.875
Projectile = "_mortar230"
