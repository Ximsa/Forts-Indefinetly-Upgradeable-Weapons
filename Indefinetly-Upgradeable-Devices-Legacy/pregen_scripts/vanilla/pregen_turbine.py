import math

iterations = 64

dofile = "dofile(\"devices/windturbine.lua\")"
EnergyProductionRate = 45
MaxRotationalSpeed = 7
for x in range (2, iterations + 1):
	EnergyProductionRate = EnergyProductionRate + 25
	MaxRotationalSpeed = MaxRotationalSpeed + 1/MaxRotationalSpeed
	newSprite = "Sprites={{Name = \"windturbine-head"+str(x)+ "\",States={Normal={Frames={{texture=\"devices/windturbine/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenInFront[1].Sprite=\"windturbine-head"+str(x)+"\""

	file = open("../../devices/turbine/_turbine" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("EnergyProductionRate = "+ str(EnergyProductionRate) +"\n")
	file.write("MaxRotationalSpeed = "+ str(MaxRotationalSpeed) +"\n")
	file.close()
print("done")