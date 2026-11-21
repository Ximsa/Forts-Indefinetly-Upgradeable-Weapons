iterations = 64

filename = "../devices/strings.lua"
mergefunction = "function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end"
startMerge = "Merge(\n\tDevice,\n\t{"
endMerge = "\t})"

file = open(filename,"w")
file.write(mergefunction + "\n")
file.write(startMerge + "\n")

for x in range (2, iterations + 1):
	file.write("\t\t" + "_turbine" + str(x) + " = L\"Upgrade Turbine\",\n")
	file.write("\t\t" + "_turbine" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_mine" + str(x) + " = L\"Upgrade Mine\",\n")
	file.write("\t\t" + "_mine" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_store" + str(x) + " = L\"Upgrade Store\",\n")
	file.write("\t\t" + "_store" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_battery" + str(x) + " = L\"Upgrade Battery\",\n")
	file.write("\t\t" + "_battery" + str(x) + "Tip2" + " = L\"Level " + str(x-1) + "\",\n")
	file.write("\t\t" + "_sandbags" + str(x) + " = L\"Upgrade Sandbags\",\n")
	file.write("\t\t" + "_sandbags" + str(x) + "Tip2" + " = L\"Level " + str(x-1) + "\",\n")
	file.write("\t\t" + "_repairstation" + str(x) + " = L\"Upgrade Repairstation\",\n")
	file.write("\t\t" + "_repairstation" + str(x) + "Tip2" + " = L\"Level " + str(x-1) + "\",\n")
	file.write("\t\t" + "_generator2" + str(x) + " = L\"Upgrade Generator\",\n")
	file.write("\t\t" + "_generator2" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
	file.write("\t\t" + "_t_plant2" + str(x) + " = L\"Upgrade Geothermal Plant\",\n")
	file.write("\t\t" + "_t_plant2" + str(x) + "Tip2" + " = L\"Level " + str(x) + "\",\n")
file.write(endMerge + "\n")
print("done")
	

	