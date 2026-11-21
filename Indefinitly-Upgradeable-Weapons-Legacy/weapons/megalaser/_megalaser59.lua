local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head59"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 12.580000000000004
ReloadTime = 26.953125
Projectile = "megalaser"
