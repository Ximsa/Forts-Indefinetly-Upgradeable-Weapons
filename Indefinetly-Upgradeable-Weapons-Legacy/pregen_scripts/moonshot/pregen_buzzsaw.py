import math

iterations = 64

dofile ="""local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp"""
EnergyFireCost = 1200.0
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
base_ReloadTime = 15.4
base_Projectile = "_buzzsaw"

for x in range (2, iterations + 1):
    newSprite = "Sprites={{Name = \"buzzsaw_base"+str(x)+ "\",States={Normal={Frames={{texture=\"mods/dlc1_weapons/weapons/buzzsaw/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
    newRoot = "Root.Sprite=\"buzzsaw_base"+str(x)+"\""
    EnergyFireCost = EnergyFireCost + 30 + EnergyFireCost / 64
    MinFireSpeed = MinFireSpeed + 1000
    MaxFireSpeed = MaxFireSpeed + 1000
    ReloadTime = max(base_ReloadTime - base_ReloadTime * (x / (iterations * 2) ), base_ReloadTime / 2.0)
    Projectile = "\"" + base_Projectile + str(x) + "\""
    file = open("../../weapons/buzzsaw/_buzzsaw" + str(x) + ".lua","w")
    file.write(dofile + "\n")
    file.write(newSprite + "\n")
    file.write(newRoot + "\n")
    file.write("NodeEffects = {}\n")
    file.write("MinFireSpeed = " + str(MinFireSpeed) + "\n")
    file.write("MaxFireSpeed = " + str(MaxFireSpeed) + "\n")
    file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
    file.write("ReloadTime = " + str(ReloadTime) + "\n")
    file.write("Projectile = " + str(Projectile) + "\n")
    file.close()
print("done")