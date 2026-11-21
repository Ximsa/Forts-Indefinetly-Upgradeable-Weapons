dofile("weapons/cannon.lua")
Sprites={{Name = "cannon-barrel30",States={Normal={Frames={{texture="weapons/cannon/barrel.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="cannon-barrel30"
NodeEffects = {}
MinFireSpeed = 9219.0
MaxFireSpeed = 9219.1
EnergyFireCost = 15603.351806506153
MetalFireCost = 260.0558634417692
ReloadTime = 19.90625
Projectile = "_cannon30"
