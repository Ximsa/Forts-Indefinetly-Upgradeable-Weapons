local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head28"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 6.844999999999994
ReloadTime = 39.0625
Projectile = "megalaser"
