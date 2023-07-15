#> hd.prkr:coas/reset.areas/replace/visible
# 可視化
# @within function hd.prkr:coas/reset.areas/replace/

##
	execute if block ~ ~ ~ light[level=0,waterlogged=false] run setblock ~ ~ ~ white_stained_glass
	execute if block ~ ~ ~ light[level=0,waterlogged=true] run setblock ~ ~ ~ light_blue_stained_glass
	execute if block ~ ~ ~ light[level=1] run setblock ~ ~ ~ black_stained_glass
