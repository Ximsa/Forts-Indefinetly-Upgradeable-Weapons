import math

iterations = 64

dofile = "dofile(\"devices/battery.lua\")"
EnergyStorageCapacity = 2000.0

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"battery-base"+str(x)+ "\",States={Normal={Frames={{texture=\"devices/battery/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"battery-base"+str(x)+"\""
	EnergyStorageCapacity = EnergyStorageCapacity + 800 #4/10
	file = open("../../devices/battery/_battery" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("EnergyStorageCapacity = "+ str(EnergyStorageCapacity) +"\n")
	file.close()
print("done")