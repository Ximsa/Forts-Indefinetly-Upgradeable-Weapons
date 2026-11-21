import math

iterations = 64
generatorPath = "path .. \"/../1295107278\""
dofile = "dofile( path .. \"/devices/generator2.lua\")"

EnergyProductionRate =  76.0
MetalProductionRate = -2
Mass = 70.0


for x in range (2, iterations + 1):

	MetalProductionRate = MetalProductionRate - 0.7
	EnergyProductionRate = EnergyProductionRate + 24
	Mass = Mass + 3.5

	newSprite = "Sprites={{Name = \"generator2-base"+str(x)+ "\",States={Normal={Frames={{texture= "+ str(generatorPath) + "..\"/devices/generator2.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"generator2-base"+str(x)+"\""

	file = open("../../devices/generator2/_generator2" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(generatorPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	#file.write("Sprites = {}\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("MetalProductionRate = "+ str(MetalProductionRate) +"\n")
	file.write("EnergyProductionRate = "+ str(EnergyProductionRate) +"\n")
	file.write("Mass = "+ str(Mass) +"\n")
	file.close()
print("done")