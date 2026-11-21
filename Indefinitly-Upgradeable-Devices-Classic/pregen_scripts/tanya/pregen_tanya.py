import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/devices/tanya.lua\")"

EnergyProductionRate = 5.0
MetalProductionRate = 1.0
EnergyStorageCapacity = 50.0
MetalStorageCapacity = 10.0


for x in range (2, iterations + 1):

	MetalProductionRate = MetalProductionRate + 0.5
	EnergyProductionRate = EnergyProductionRate + 5
	EnergyStorageCapacity = EnergyStorageCapacity + 10
	MetalStorageCapacity = MetalStorageCapacity + 5

	newSprite = "Sprites={{Name = \"tanya-base"+str(x)+ "\",States={Normal={Frames={{texture= "+ str(tanyaPath) + "..\"/devices/tanya/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"tanya-base"+str(x)+"\""

	file = open("../../devices/tanya/_tanya" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	#file.write("Sprites = {}\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("MetalProductionRate = "+ str(MetalProductionRate) +"\n")
	file.write("EnergyProductionRate = "+ str(EnergyProductionRate) +"\n")
	file.write("EnergyStorageCapacity = "+ str(EnergyStorageCapacity) +"\n")
	file.write("MetalStorageCapacity = "+ str(MetalStorageCapacity) +"\n")
	file.close()
print("done")