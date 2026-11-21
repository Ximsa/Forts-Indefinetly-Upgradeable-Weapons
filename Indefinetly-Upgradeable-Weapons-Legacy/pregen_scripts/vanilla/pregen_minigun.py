import math
import os
iterations = 64

dofile = "dofile(\"weapons/minigun.lua\")"
EnergyFireCost = 300.0
MetalFireCost = 20
MinFireSpeed = 9000.0
MaxFireSpeed = 9000.1
base_ReloadTime = 6
base_Projectile = "_minigun"

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"minigun-base"+str(x)+ "\",States={Normal={Frames={{texture=\"weapons/machinegun/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"minigun-base"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 30 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 2 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed + 450
	MaxFireSpeed = MaxFireSpeed + 450
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../weapons/minigun/_minigun" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("NodeEffects = {}\n")
	file.write("MinFireSpeed = " + str(MinFireSpeed) + "\n")
	file.write("MaxFireSpeed = " + str(MaxFireSpeed) + "\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
	file.write("ReloadTime = " + str(ReloadTime) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.close()
print("done")
os.system("pause")