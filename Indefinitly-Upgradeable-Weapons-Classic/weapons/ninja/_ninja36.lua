local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base36"
NodeEffects = {}
MinFireSpeed = 14000.0
MaxFireSpeed = 14000.1
EnergyFireCost = 949.8153157962105
MetalFireCost = 12.664204210616132
ReloadTime = 1.509375
Projectile = "_star36"
FireStdDev =0.0002135046164302038
FireStdDevAuto =0.0008540184657208152
