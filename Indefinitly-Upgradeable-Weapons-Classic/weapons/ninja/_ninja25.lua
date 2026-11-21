local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base25"
NodeEffects = {}
MinFireSpeed = 11800.0
MaxFireSpeed = 11800.1
EnergyFireCost = 650.3644054708969
MetalFireCost = 8.671525406278628
ReloadTime = 1.68984375
Projectile = "_star25"
FireStdDev =0.0006091535879686227
FireStdDevAuto =0.0024366143518744906
