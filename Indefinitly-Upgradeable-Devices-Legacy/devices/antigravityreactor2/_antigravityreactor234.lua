local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/antigravityreactor2.lua")
path = tmp
Sprites={{Name = "reactor-base334",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/antigravityreactor2/base.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="reactor-base334"
MetalProductionRate = 40.0
EnergyProductionRate = -215
Mass = -30000.0
MetalStorageCapacity = 215
