import math

iterations = 64

dofile = "dofile(\"devices/mine.lua\")"
MetalProductionRate = 4
EnergyProductionRate = -5

for x in range (2, iterations + 1):
	MetalProductionRate = MetalProductionRate + 2
	EnergyProductionRate = EnergyProductionRate - 3
	#newSprite = "Sprites={{Name = \"mine-base"+str(x)+ "\",States={Normal={Frames={{texture=\"devices/mine/base.dds\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},},mipmap=true,},},Idle=Normal,},},}"
	newSprite = "Sprites={{Name=\"wheel_anim"+str(x)+"\",InitialState=\"Normal\",States={Normal={RandomStartFrame=true,Frames={{texture=\"devices/mine/Mine01.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1}},{texture=\"devices/mine/Mine02.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1}},{texture=\"devices/mine/Mine03.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 }},{ texture = \"devices/mine/Mine04.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 }},{ texture = \"devices/mine/Mine05.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 }},{ texture = \"devices/mine/Mine06.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 }},{ texture = \"devices/mine/Mine07.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 }},{ texture = \"devices/mine/Mine08.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 }},{ texture = \"devices/mine/Mine09.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 }},{ texture = \"devices/mine/Mine10.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 }},duration = 0.1,blendColour = false,blendCoordinates = false,mipmap = true,},NextState = \"Normal\",},Idle ={Frames ={{ texture = \"devices/mine/Mine10.tga\" },	mipmap = true,},NextState = \"Idle\",	},},},}"

	newRoot = "Root.ChildrenBehind[1].Sprite=\"wheel_anim"+str(x)+"\""

	file = open("../../devices/mine/_mine" + str(x) + ".lua","w")
	file.write(dofile + "\n")
	file.write(newSprite + "\n")
	file.write(newRoot + "\n")
	file.write("NodeEffects = {} \n")
	file.write("MetalProductionRate = "+ str(MetalProductionRate) +"\n")
	file.write("EnergyProductionRate = "+ str(EnergyProductionRate) +"\n")
	file.close()
print("done")
#newSprite = "Sprites={{Name=\"wheel_anim"+str(x)+"\",InitialState=\"Normal\",States={Normal={RandomStartFrame=true,Frames={{texture=\"devices/mine/Mine01.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},{texture=\"devices/mine/Mine02.tga\",colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1},{texture=\"devices/mine/Mine03.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 },{ texture = \"devices/mine/Mine04.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 },{ texture = \"devices/mine/Mine05.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 },{ texture = \"devices/mine/Mine06.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 },{ texture = \"devices/mine/Mine07.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 },{ texture = \"devices/mine/Mine08.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 },{ texture = \"devices/mine/Mine09.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 },{ texture = \"devices/mine/Mine10.tga\", colour={"+str(math.sqrt(((x>>4) & 3)/4.0))+","+str(math.sqrt(((x>>2) & 3)/4.0))+","+str(math.sqrt((x & 3)/4.0))+",1 },duration = 0.1,blendColour = false,blendCoordinates = false,mipmap = true,},NextState = \"Normal\",},Idle ={Frames ={{ texture = \"devices/mine/Mine10.tga\" },	mipmap = true,},NextState = \"Idle\",	},},},}"
