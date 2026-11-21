dofile("weapons/mortar.lua")
Sprites={{Name = "mortar-head62",States={Normal={Frames={{texture="weapons/mortar/head.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortar-head62"
NodeEffects = {}
MinFireSpeed = 1550.0
MaxFireSpeed = 3849.9999999999995
EnergyFireCost = 2530.641190579639
MetalFireCost = 189.79808929347297
ReloadTime = 4.640625
MinFireAngle = 0
Projectile = "_mortar262"
