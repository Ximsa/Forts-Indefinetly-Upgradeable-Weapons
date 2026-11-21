local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head40"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 9.064999999999994
ReloadTime = 34.375
Projectile = "megalaser"
