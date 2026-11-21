iterations = 64

filename = "../../weapons/strings.lua"
mergefunction = "function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end"
startMerge = "Merge(\n\tWeapon,\n\t{"
endMerge = "\t})"

file = open(filename,"w")
file.write(mergefunction + "\n")
file.write(startMerge + "\n")

for x in range (2, iterations + 1):


	file.write("\t\t" + "_minigun" + str(x) + " = L\"Upgrade Minigun\",\n")
	file.write("\t\t" + "_minigun" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_sniper" + str(x) + " = L\"Upgrade Sniper\",\n")
	file.write("\t\t" + "_sniper" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_mortar" + str(x) + " = L\"Upgrade Mortar\",\n")
	file.write("\t\t" + "_mortar" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_cannon" + str(x) + " = L\"Upgrade Cannon\",\n")
	file.write("\t\t" + "_cannon" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_laser" + str(x) + " = L\"Upgrade Laser\",\n")
	file.write("\t\t" + "_laser" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")

	#tog
	file.write("\t\t" + "_shotgun" + str(x) + " = L\"Upgrade Shotgun\",\n")
	file.write("\t\t" + "_shotgun" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_rocket" + str(x) + " = L\"Upgrade Rocket\",\n")
	file.write("\t\t" + "_rocket" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_cannon20mm" + str(x) + " = L\"Upgrade 20mm Cannon\",\n")
	file.write("\t\t" + "_cannon20mm" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_firebeam" + str(x) + " = L\"Upgrade Firebeam\",\n")
	file.write("\t\t" + "_firebeam" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
file.write(endMerge + "\n")
print("done")
	

	