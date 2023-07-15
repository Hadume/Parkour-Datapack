#> hd.prkr:egg/attractive.sign/change
# 看板更新
# @within function hd.prkr:egg/attractive.sign/

## 明るく
	data modify block ~ ~ ~ front_text.has_glowing_text set value 1b
	data modify block ~ ~ ~ back_text.has_glowing_text set value 1b
## 文字色
	### ダークオーク
		execute if block ~ ~ ~ dark_oak_sign run data modify block ~ ~ ~ front_text.color set value "white"
		execute if block ~ ~ ~ dark_oak_sign run data modify block ~ ~ ~ back_text.color set value "white"
		execute if block ~ ~ ~ dark_oak_wall_sign run data modify block ~ ~ ~ front_text.color set value "white"
		execute if block ~ ~ ~ dark_oak_wall_sign run data modify block ~ ~ ~ back_text.color set value "white"
	### 白樺
		execute if block ~ ~ ~ birch_sign run data modify block ~ ~ ~ front_text.color set value "black"
		execute if block ~ ~ ~ birch_sign run data modify block ~ ~ ~ back_text.color set value "black"
		execute if block ~ ~ ~ birch_wall_sign run data modify block ~ ~ ~ front_text.color set value "black"
		execute if block ~ ~ ~ birch_wall_sign run data modify block ~ ~ ~ back_text.color set value "black"
