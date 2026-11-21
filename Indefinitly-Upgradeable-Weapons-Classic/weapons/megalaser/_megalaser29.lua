local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head29"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 7.029999999999994
ReloadTime = 38.671875
Projectile = "megalaser"
