local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head33"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 32800.0
MaxFireSpeed = 32800.0
EnergyFireCost = 6041.1338480057275
MetalFireCost = 201.37112826685765
ReloadTime = 6.6796875
Projectile = "_railgun33"
FireStdDev =0.0005920305093095864
FireStdDevAuto =0.0002960152546547932
