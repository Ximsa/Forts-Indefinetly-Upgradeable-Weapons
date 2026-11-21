import math

iterations = 64
aaPath = "path .. \"/../1336948067\""
dofile = "dofile( path .. \"/weapons/aabeam.lua\")"

EnergyFireCost = 50.0
base_Projectile = "laseraa"
BeamDuration = 0.35
for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"firebeam-head1"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(aaPath) + "..\"/weapons/aabeam/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenInFront[1].Sprite=\"firebeam-head1"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 10
	BeamDuration = BeamDuration + 0.1
	Projectile = "\"_" + base_Projectile + str(x) + "\""
	file = open("../../weapons/aabeam/_aabeam" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(aaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("BeamDuration = " + str(BeamDuration) + "\n")
	file.close()
print("done")