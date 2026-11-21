local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel13"
NodeEffects = {}
MinFireSpeed = 12800.0
MaxFireSpeed = 12800.1
EnergyFireCost = 3895.4173739978733
MetalFireCost = 100.52689997413866
ReloadTime = 4.94140625
Projectile = "_cannon88he13"
FireStdDev =0.0015931540885517827
FireStdDevAuto =0.0015931540885517827
