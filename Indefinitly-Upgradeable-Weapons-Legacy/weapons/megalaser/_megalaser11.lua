local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head11"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 3.7000000000000006
ReloadTime = 45.703125
Projectile = "megalaser"
