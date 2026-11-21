local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head61"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 12.950000000000005
ReloadTime = 26.171875
Projectile = "megalaser"
