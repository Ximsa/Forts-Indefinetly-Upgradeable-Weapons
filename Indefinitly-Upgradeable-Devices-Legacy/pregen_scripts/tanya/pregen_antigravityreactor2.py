import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/devices/antigravityreactor2.lua\")"

EnergyProductionRate = -50
MetalProductionRate = 7.0
MetalStorageCapacity = 50
Mass = -3600.0


for x in range (2, iterations + 1):

	MetalProductionRate = MetalProductionRate + 1
	EnergyProductionRate = EnergyProductionRate - 5
	Mass = Mass - 800
	MetalStorageCapacity = MetalStorageCapacity + 5

	newSprite = "Sprites={{Name = \"reactor-base3"+str(x)+ "\",States={Normal={Frames={{texture= "+ str(tanyaPath) + "..\"/devices/antigravityreactor2/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"reactor-base3"+str(x)+"\""

	file = open("../../devices/antigravityreactor2/_antigravityreactor2" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	#file.write("Sprites = {}\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("MetalProductionRate = "+ str(MetalProductionRate) +"\n")
	file.write("EnergyProductionRate = "+ str(EnergyProductionRate) +"\n")
	file.write("Mass = "+ str(Mass) +"\n")
	file.write("MetalStorageCapacity = "+ str(MetalStorageCapacity) +"\n")
	file.close()
print("done")