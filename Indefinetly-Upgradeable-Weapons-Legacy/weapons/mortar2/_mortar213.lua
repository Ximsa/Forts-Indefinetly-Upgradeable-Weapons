dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head13",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head13"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 502.6344998706933
MetalFireCost = 37.697587490302
ReloadTime = 8.0859375
MinFireAngle = 32.8125
Projectile = "_mortar213"
