local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head42"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 36400.0
MaxFireSpeed = 36400.0
EnergyFireCost = 7952.013158442711
MetalFireCost = 265.0671052814238
ReloadTime = 6.046875
Projectile = "_railgun42"
FireStdDev =0.0002510787290020446
FireStdDevAuto =0.0001255393645010223
