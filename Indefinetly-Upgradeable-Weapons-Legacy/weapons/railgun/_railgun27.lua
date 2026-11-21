local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head27"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 30400.0
MaxFireSpeed = 30400.0
EnergyFireCost = 4907.570139600045
MetalFireCost = 163.58567132000152
ReloadTime = 7.1015625
Projectile = "_railgun27"
FireStdDev =0.0010488181611030005
FireStdDevAuto =0.0005244090805515002
