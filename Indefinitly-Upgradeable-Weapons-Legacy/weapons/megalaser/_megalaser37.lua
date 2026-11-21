local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head37"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 8.509999999999993
ReloadTime = 35.546875
Projectile = "megalaser"
