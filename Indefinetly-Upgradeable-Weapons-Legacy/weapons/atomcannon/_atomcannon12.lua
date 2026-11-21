local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel12"
NodeEffects = {}
MinFireSpeed = 470.715894135
MaxFireSpeed = 8650.1
EnergyFireCost = 59401.16921485456
MetalFireCost = 1188.023384297091
ReloadTime = 113.28125
Projectile = "_atomcannon12"
FireStdDev =0.003504938994813922
FireStdDevAuto =0.0038554328942953147
