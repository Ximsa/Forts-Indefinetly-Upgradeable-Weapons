local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/megalaser.lua")
path = tmp
Sprites={{Name = "megalaser-head39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/megalaser/head.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="megalaser-head39"
FireEffect = "effects/fire_laser.lua"NodeEffects = {}
BeamDamageMultiplier = 8.879999999999994
ReloadTime = 34.765625
Projectile = "megalaser"
