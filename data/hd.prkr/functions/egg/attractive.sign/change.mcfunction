#> hd.prkr:egg/attractive.sign/change
#
# 看板更新
#
# @within function hd.prkr:egg/attractive.sign/

## 明るく
	data modify block ~ ~ ~ GlowingText set value 1b
## 文字色
	execute if block ~ ~ ~ minecraft:dark_oak_sign run data modify block ~ ~ ~ Color set value "white"
	execute if block ~ ~ ~ minecraft:dark_oak_wall_sign run data modify block ~ ~ ~ Color set value "white"