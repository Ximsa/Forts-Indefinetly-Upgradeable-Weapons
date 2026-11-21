import math

iterations = 64

dofile = """local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/howitzer.lua")
path = tmp"""
EnergyFireCost = 4000.0
MetalFireCost = 70.0
base_Projectile = "_howitzer"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"howitzer-base"+str(x)+ "\",States={Normal={Frames={{texture=\"mods/dlc1_weapons/weapons/howitzer/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"howitzer-base"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + EnergyFireCost / 64 + 400
	MetalFireCost = MetalFireCost + MetalFireCost / 64 + 7
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/howitzer/_howitzer" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("NodeEffects = {}\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.close()
print("done")