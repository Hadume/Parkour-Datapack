#> hd.prkr:coas/reset.areas/visible
#
# 可視化
#
# @within function hd.prkr:coas/reset.areas/replace

## 
	execute if block ~ ~ ~ minecraft:structure_void run setblock ~ ~ ~ minecraft:white_stained_glass
	execute if block ~ ~ ~ minecraft:light[level=0] run setblock ~ ~ ~ minecraft:black_stained_glass
