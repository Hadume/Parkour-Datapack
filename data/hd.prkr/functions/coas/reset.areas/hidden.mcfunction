#> hd.prkr:coas/reset.areas/hidden
#
# 不可視化
#
# @within function hd.prkr:coas/reset.areas/

## 
	execute if block ~ ~ ~ minecraft:white_stained_glass run setblock ~ ~ ~ minecraft:structure_void
	execute if block ~ ~ ~ minecraft:black_stained_glass run setblock ~ ~ ~ minecraft:light[level=0]
## 音
	playsound minecraft:block.glass.break block @s ~ ~ ~
