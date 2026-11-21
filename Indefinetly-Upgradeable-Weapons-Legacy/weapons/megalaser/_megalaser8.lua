local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head8"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 3.1450000000000005
ReloadTime = 46.875
Projectile = "megalaser"
