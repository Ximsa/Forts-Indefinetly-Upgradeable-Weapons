import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/weapons/megalaser.lua\")"


base_ReloadTime = 50.0
BeamDamageMultiplier = 1.85
Projectile = "\"megalaser\""

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"megalaser-head"+str(x)+ "\",States={Normal={Frames={{texture= "  + str(tanyaPath) + "..\"/weapons/megalaser/head.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenInFront[1].Sprite=\"megalaser-head"+str(x)+"\""
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	BeamDamageMultiplier = BeamDamageMultiplier + 1.85 / 10
	
	file = open("../../weapons/megalaser/_megalaser" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	#file.write("Sprites = {}\n")
	file.write("FireEffect = \"effects/fire_laser.lua\"")
	file.write("NodeEffects = {}\n")
	file.write("BeamDamageMultiplier = " + str(BeamDamageMultiplier) + "\n")
	file.write("ReloadTime = " + str(ReloadTime) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.close()
print("done")