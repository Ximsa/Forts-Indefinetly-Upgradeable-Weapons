local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head26"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 6.474999999999995
ReloadTime = 39.84375
Projectile = "megalaser"
