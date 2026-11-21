import math

iterations = 64

dofile = "dofile(\"devices/sandbags.lua\")"
Mass = 45.0
HitPoints = 300.0
for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"_sandbags-base"+str(x)+ "\",States={Normal={Frames={{texture=\"devices/sandbags/Sandbags.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"_sandbags-base"+str(x)+"\""

	Mass = Mass + 2.5
	HitPoints = HitPoints + 60.0
	file = open("../../devices/sandbags/_sandbags" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("Mass = "+ str(Mass) +"\n")
	file.write("HitPoints = "+ str(HitPoints) +"\n")
	file.close()
print("done")