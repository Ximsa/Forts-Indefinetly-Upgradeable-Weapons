local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head32"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 7.584999999999993
ReloadTime = 37.5
Projectile = "megalaser"
