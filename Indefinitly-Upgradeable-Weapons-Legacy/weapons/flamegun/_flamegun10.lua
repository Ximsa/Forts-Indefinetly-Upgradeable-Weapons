local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base10",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base10"
NodeEffects = {}
MinFireSpeed = 6300.0
MaxFireSpeed = 6300.1
EnergyFireCost = 737.8321059068924
MetalFireCost = 9.583496053297726
ReloadTime = 5.53125
Projectile = "flamegun"
RoundsEachBurst =21
FireStdDev =0.0425
FireStdDevAuto =0.085
