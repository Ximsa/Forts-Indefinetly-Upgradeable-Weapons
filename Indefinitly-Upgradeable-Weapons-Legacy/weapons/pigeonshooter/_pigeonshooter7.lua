local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head7"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 10200.0
MaxFireSpeed = 10200.1
EnergyFireCost = 774.6393789649301
MetalFireCost = 51.64262526432867
ReloadTime = 6.14453125
Projectile = "_musket7"
FireStdDev =0.011289478601075544
FireStdDevAuto =0.022578957202151088
