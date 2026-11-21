import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/devices/derrick2.lua\")"

MetalProductionRate = 15
EnergyProductionRate = -20

for x in range (2, iterations + 1):

	MetalProductionRate = MetalProductionRate + 4
	EnergyProductionRate = EnergyProductionRate - 10

	newSprite = "Sprites={{Name = \"derrick-base2"+str(x)+ "\",States={Normal={Frames={{texture= "+ "\"devices/derrick/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"derrick-base2"+str(x)+"\""

	file = open("../../devices/derrick2/_derrick2" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	#file.write("Sprites = {}\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("MetalProductionRate = "+ str(MetalProductionRate) +"\n")
	file.write("EnergyProductionRate = "+ str(EnergyProductionRate) +"\n")
	file.close()
print("done")