local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head33"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 7.7699999999999925
ReloadTime = 37.109375
Projectile = "megalaser"
