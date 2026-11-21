import math

iterations = 64

dofile ="""local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp"""
EnergyFireCost = 428.57143
RoundsEachBurst = 9
base_Projectile = "magnabeam"
base_DestroyProjectile = "magneticfield"
for x in range (2, iterations + 1):
    newSprite = "Sprites={{Name = \"magnabeam_base"+str(x)+ "\",States={Normal={Frames={{texture=\"mods/dlc1_weapons/weapons/magnabeam/base.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
    newRoot = "Root.Sprite=\"magnabeam_base"+str(x)+"\""
    	
    EnergyFireCost = EnergyFireCost + 428.57143
    	
    Projectile = "\"" + base_Projectile + str(x) + "\""
    DestroyProjectile = "\"" + base_DestroyProjectile + str(x) + "\""
    file = open("../../weapons/magnabeam/_magnabeam" + str(x) + ".lua","w")
    file.write(dofile + "\n")
    file.write(newSprite + "\n")
    file.write(newRoot + "\n")
    file.write("NodeEffects = {}\n")
    file.write("EnergyFireCost = " + str(EnergyFireCost) + "\n")
    file.write("Projectile = " + str(Projectile) + "\n")
    file.write("DestroyProjectile = " + str(DestroyProjectile) + "\n")
    file.close()
print("done")