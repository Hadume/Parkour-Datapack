#> hd.prkr:coas/reset.areas/visible
#
# 可視化
#
# @within function hd.prkr:coas/reset.areas/

## 
	execute if block ~ ~ ~ minecraft:structure_void run setblock ~ ~ ~ minecraft:white_stained_glass
	execute if block ~ ~ ~ minecraft:light[level=0] run setblock ~ ~ ~ minecraft:black_stained_glass
## 音
	playsound minecraft:block.glass.place block @s ~ ~ ~
