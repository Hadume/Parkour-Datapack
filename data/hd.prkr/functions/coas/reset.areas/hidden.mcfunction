#> hd.prkr:coas/reset.areas/hidden
#
# 不可視化
#
# @within function hd.prkr:coas/reset.areas/replace

##
	execute if block ~ ~ ~ white_stained_glass run setblock ~ ~ ~ light[level=0,waterlogged=false]
	execute if block ~ ~ ~ light_blue_stained_glass run setblock ~ ~ ~ light[level=0,waterlogged=true]
	execute if block ~ ~ ~ black_stained_glass run setblock ~ ~ ~ light[level=1]
