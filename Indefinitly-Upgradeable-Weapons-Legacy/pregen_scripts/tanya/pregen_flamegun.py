import math

iterations = 64
tanyaPath = "path .. \"/../1492181905\""
dofile = "dofile( path .. \"/weapons/flamegun.lua\")"
EnergyFireCost = 350.0
MetalFireCost = 0
MinFireSpeed = 4500.0
MaxFireSpeed = 4500.1
base_ReloadTime = 6
RoundsEachBurst = 12
FireStdDev = 0.02
FireStdDevAuto = 0.01
Projectile = "\"flamegun\""

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"flamegun-base"+str(x)+ "\",States={Normal={Frames={{texture=\"weapons/machinegun/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.Sprite=\"flamegun-base"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 35 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 1 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed + 200
	MaxFireSpeed = MaxFireSpeed + 200
	RoundsEachBurst = RoundsEachBurst + 1
	FireStdDev = FireStdDev + 0.01 / 4
	FireStdDevAuto = FireStdDev * 2
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)

	file = open("../../weapons/flamegun/_flamegun" + str(x) + ".lua","w")
	file.write("local tmp = path\n")
	file.write("path = " + str(tanyaPath) + "\n")
	file.write(dofile + "\n")
	file.write("path = tmp\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	#file.write("Sprites = {}\n")
	file.write("NodeEffects = {}\n")
	file.write("MinFireSpeed = " + str(MinFireSpeed) + "\n")
	file.write("MaxFireSpeed = " + str(MaxFireSpeed) + "\n")
	file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
	file.write("MetalFireCost = " + str(MetalFireCost) + "\n")
	file.write("ReloadTime = " + str(ReloadTime) + "\n")
	file.write("Projectile = " + str(Projectile) + "\n")
	file.write("RoundsEachBurst =" + str(RoundsEachBurst) + "\n")
	file.write("FireStdDev =" + str(FireStdDev) + "\n")
	file.write("FireStdDevAuto =" + str(FireStdDevAuto) + "\n")
	file.close()
print("done")