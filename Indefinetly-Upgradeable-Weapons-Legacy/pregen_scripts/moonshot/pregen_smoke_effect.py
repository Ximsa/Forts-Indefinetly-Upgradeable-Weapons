import math

iterations = 64

line1 = 'dofile("mods/dlc1_weapons/effects/smoke.lua")\n'
line2 =  'dofile(path .. "/effects/enlarge_my_effect.lua")\n'
base_size = 150
growth = 0.1

for x in range (2, iterations + 1):
    Size = base_size*(1+(x-1)*growth)
    file = open("../../effects/smoke" + str(x) + ".lua","w")
    file.write(line1)
    file.write(line2)
    file.write("EnlargeEffect(Effects," + str(Size) + ")\n")
    file.close()
print("done")