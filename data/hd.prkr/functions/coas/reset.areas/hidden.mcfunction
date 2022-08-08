#> hd.prkr:coas/reset.areas/hidden
#
# 不可視化
#
# @within function hd.prkr:coas/reset.areas/replace

## 
	execute if block ~ ~ ~ minecraft:white_stained_glass run setblock ~ ~ ~ minecraft:light[level=0,waterlogged=false]
	execute if block ~ ~ ~ minecraft:light_blue_stained_glass run setblock ~ ~ ~ minecraft:light[level=0,waterlogged=true]
	execute if block ~ ~ ~ minecraft:black_stained_glass run setblock ~ ~ ~ minecraft:light[level=1]
