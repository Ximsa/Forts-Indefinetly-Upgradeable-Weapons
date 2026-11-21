local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head49"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 10.729999999999999
ReloadTime = 30.859375
Projectile = "megalaser"
