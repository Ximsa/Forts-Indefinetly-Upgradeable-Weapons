local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel17"
NodeEffects = {}
MinFireSpeed = 277.9530283277762
MaxFireSpeed = 10650.1
EnergyFireCost = 77085.96802692335
MetalFireCost = 1541.719360538467
ReloadTime = 108.3984375
Projectile = "_atomcannon17"
FireStdDev =0.0021762913579014853
FireStdDevAuto =0.002393920493691634
