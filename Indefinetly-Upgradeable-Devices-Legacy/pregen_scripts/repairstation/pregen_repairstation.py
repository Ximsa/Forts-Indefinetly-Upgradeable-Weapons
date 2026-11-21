import math

iterations = 64

dofile = "dofile(\"mods/repair_station/devices/repairstation.lua\")"
EnergyProductionRate = -16.0
RepairFieldRadius = 200
for x in range (2, iterations + 1):
	EnergyProductionRate = EnergyProductionRate - 1.6
	RepairFieldRadius = RepairFieldRadius + 20
	newSprite = "Sprites={{Name = \"_repairstation-base"+str(x)+ "\",States={Normal={Frames={{texture=\"mods/repair_station/devices/repairstation/active.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,Activate={Frames={{texture=\"mods/repair_station/devices/repairstation/active.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},duration = 0.5,mipmap=true,},NextState = \"Active\",},Active={Frames={{texture=\"mods/repair_station/devices/repairstation/active.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Deactivate={Frames={{texture=\"mods/repair_station/devices/repairstation/active.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},duration = 0.5,mipmap=true,},NextState = \"Normal\",}},},}"
	newRoot = "Root.Sprite=\"_repairstation-base"+str(x)+"\""

	file = open("../../devices/repairstation/_repairstation" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("EnergyProductionRate = "+ str(EnergyProductionRate) +"\n")
	file.write("RepairFieldRadius = "+ str(RepairFieldRadius) +"\n")
	file.close()
print("done")