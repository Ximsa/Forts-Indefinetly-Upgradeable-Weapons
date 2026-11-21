local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head6"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 2.7750000000000004
ReloadTime = 47.65625
Projectile = "megalaser"
