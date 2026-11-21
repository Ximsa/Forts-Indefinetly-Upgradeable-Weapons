local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel54"
NodeEffects = {}
MinFireSpeed = 29200.0
MaxFireSpeed = 29200.1
EnergyFireCost = 16167.514221451069
MetalFireCost = 417.2261734568019
ReloadTime = 3.1796875
Projectile = "_cannon88he54"
FireStdDev =3.20005682926394e-05
FireStdDevAuto =3.20005682926394e-05
