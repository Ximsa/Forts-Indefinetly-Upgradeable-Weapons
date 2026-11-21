local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head10"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 3.5150000000000006
ReloadTime = 46.09375
Projectile = "megalaser"
