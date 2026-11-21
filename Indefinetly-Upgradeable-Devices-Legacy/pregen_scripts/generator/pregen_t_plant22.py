import math

iterations = 64
generatorPath = "path .. \"/../1295107278\""
dofile = "dofile( path .. \"/devices/t_plant2.lua\")"

EnergyProductionRate =  88


for x in range (2, iterations + 1):

	EnergyProductionRate = EnergyProductionRate + 32

	newSprite = "Sprites={{Name = \"t_plant2"+str(x)+ "\",States={Normal={Frames={{texture= "+ str(generatorPath) + "..\"/t_plant2.dds\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"t_plant2"+str(x)+"\""

	file = open("../../devices/t_plant2/_t_plant2" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(generatorPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	#file.write("Sprites = {}\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("EnergyProductionRate = "+ str(EnergyProductionRate) +"\n")
	file.close()
print("done")