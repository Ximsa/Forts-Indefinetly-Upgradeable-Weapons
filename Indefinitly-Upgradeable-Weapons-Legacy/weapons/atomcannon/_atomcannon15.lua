local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel15"
NodeEffects = {}
MinFireSpeed = 343.15188682441504
MaxFireSpeed = 9850.1
EnergyFireCost = 69847.1301865747
MetalFireCost = 1396.9426037314936
ReloadTime = 110.3515625
Projectile = "_atomcannon15"
FireStdDev =0.0026333125430607974
FireStdDevAuto =0.0028966437973668773
