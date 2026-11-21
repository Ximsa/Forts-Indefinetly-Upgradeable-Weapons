local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel18"
NodeEffects = {}
MinFireSpeed = 250.1577254949986
MaxFireSpeed = 11050.1
EnergyFireCost = 80790.43627734402
MetalFireCost = 1615.8087255468806
ReloadTime = 107.421875
Projectile = "_atomcannon18"
FireStdDev =0.00197844668900135
FireStdDevAuto =0.0021762913579014853
