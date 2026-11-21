dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head12",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head12"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 475.20935371883644
MetalFireCost = 35.640701528912736
ReloadTime = 8.15625
MinFireAngle = 33.75
Projectile = "_mortar212"
