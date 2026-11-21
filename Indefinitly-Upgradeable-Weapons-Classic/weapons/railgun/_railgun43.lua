local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head43"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 36800.0
MaxFireSpeed = 36800.0
EnergyFireCost = 8181.263364043378
MetalFireCost = 272.70877880144604
ReloadTime = 5.9765625
Projectile = "_railgun43"
FireStdDev =0.00022825339000185873
FireStdDevAuto =0.00011412669500092936
