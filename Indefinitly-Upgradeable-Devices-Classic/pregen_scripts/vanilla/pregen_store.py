import math

iterations = 64

dofile = "dofile(\"devices/metal_store.lua\")"
MetalStorageCapacity = 300.0

for x in range (2, iterations + 1):
	newSprite = "Sprites={{Name = \"metalstore-head"+str(x)+ "\",States={Normal={Frames={{texture=\"devices/metalstore/metal.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newRoot = "Root.ChildrenBehind[1].Sprite=\"metalstore-head"+str(x)+"\""
	MetalStorageCapacity = MetalStorageCapacity + 120 #4/10
	file = open("../../devices/store/_store" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("MetalStorageCapacity = "+ str(MetalStorageCapacity) +"\n")
	file.close()
print("done")