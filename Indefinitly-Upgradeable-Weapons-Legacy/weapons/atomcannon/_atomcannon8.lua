local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel8"
NodeEffects = {}
MinFireSpeed = 717.4453500000001
MaxFireSpeed = 7050.1
EnergyFireCost = 46207.95107006984
MetalFireCost = 924.1590214013968
ReloadTime = 117.1875
Projectile = "_atomcannon8"
FireStdDev =0.005131581182307065
FireStdDevAuto =0.005644739300537772
