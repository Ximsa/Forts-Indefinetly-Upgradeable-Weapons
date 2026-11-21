iterations = 64

dofile ="""local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp"""

EnergyFireCost = 500.0
MetalFireCost = 30
MinFireSpeed = 9000.0
MaxFireSpeed = 9000.1
base_ReloadTime = 10
base_Projectile = "_minigunAP"

for x in range (2, iterations + 1):
	newRoot = "Root.Sprite=\"minigun-base"+str(x)+"\""
	EnergyFireCost = EnergyFireCost + 30 + EnergyFireCost / 64
	MetalFireCost = MetalFireCost + 2 + MetalFireCost / 64
	MinFireSpeed = MinFireSpeed + 450
	MaxFireSpeed = MaxFireSpeed + 450
	ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
	Projectile = "\"" + base_Projectile + str(x) + "\""
	file = open("../../mods/commander-iba-turtle/common/weapons/minigunAP/_minigunAP" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write("Sprites = {}\n")
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