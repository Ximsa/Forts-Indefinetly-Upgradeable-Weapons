local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/railgun.lua")
path = tmp
Sprites={{Name = "railgun-head35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/railgun/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="railgun-head35"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"ReloadEffect = "effects/reload_cannon.lua"NodeEffects = {}
MinFireSpeed = 33600.0
MaxFireSpeed = 33600.0
EnergyFireCost = 6443.034791949267
MetalFireCost = 214.76782639830898
ReloadTime = 6.5390625
Projectile = "_railgun35"
FireStdDev =0.0004892814126525506
FireStdDevAuto =0.0002446407063262753
