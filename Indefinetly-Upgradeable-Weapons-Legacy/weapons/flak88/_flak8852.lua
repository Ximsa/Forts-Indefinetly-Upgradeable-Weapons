local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel52"
NodeEffects = {}
MinFireSpeed = 28400.0
MaxFireSpeed = 28400.1
EnergyFireCost = 15370.996035754693
MetalFireCost = 396.6708654388309
ReloadTime = 3.265625
Projectile = "_cannon88he52"
FireStdDev =3.872068763409368e-05
FireStdDevAuto =3.872068763409368e-05
