local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head34",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head34"
NodeEffects = {}
MinFireSpeed = 78.80304367571323
MaxFireSpeed = 12505.0
EnergyFireCost = 4754.686906194907
MetalFireCost = 118.8671726548727
ReloadTime = 7.34375
Projectile = "_mortar234"
FireStdDevAuto =3.708378525915916e-05
