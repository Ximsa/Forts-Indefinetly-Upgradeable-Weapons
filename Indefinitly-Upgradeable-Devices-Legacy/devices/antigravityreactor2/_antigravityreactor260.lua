local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/devices/antigravityreactor2.lua")
path = tmp
Sprites={{Name = "reactor-base360",States={Normal={Frames={{texture= path .. "/../1492181905".."/devices/antigravityreactor2/base.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="reactor-base360"
MetalProductionRate = 66.0
EnergyProductionRate = -345
Mass = -50800.0
MetalStorageCapacity = 345
