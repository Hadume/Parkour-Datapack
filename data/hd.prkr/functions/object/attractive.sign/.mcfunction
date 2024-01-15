#> hd.prkr:object/attractive.sign/
# 簡単看板
# @within function
#   hd.prkr:object/attractive.sign/tick
#   hd.prkr:object/attractive.sign/action/turn

## 看板置かれた
	execute unless data entity @s {data:{HdP:{ASign:{Put:1b}}}} run data modify entity @s data.HdP.ASign.Put set value 1b
## 看板更新
	execute if data entity @s {data:{HdP:{ASign:{Enable:1b}}}} run function hd.prkr:object/attractive.sign/change
	execute if data entity @s {data:{HdP:{ASign:{Enable:0b}}}} run data modify block ~ ~ ~ front_text merge value {has_glowing_text:0b,color:"black"}
	execute if data entity @s {data:{HdP:{ASign:{Enable:0b}}}} run data modify block ~ ~ ~ back_text merge value {has_glowing_text:0b,color:"black"}
## 看板にコマンドを代入
	data modify block ~ ~ ~ front_text.messages[-1] set value '{"block":"~ ~ ~","nbt":"front_text.messages[-1]","interpret":true,"clickEvent":{"action":"run_command","value":"/execute align xyz positioned ~0.5 ~ ~0.5 run function hd.prkr:object/attractive.sign/action/"}}'
	data modify block ~ ~ ~ back_text.messages[-1] set value '{"block":"~ ~ ~","nbt":"back_text.messages[-1]","interpret":true,"clickEvent":{"action":"run_command","value":"/execute align xyz positioned ~0.5 ~ ~0.5 run function hd.prkr:object/attractive.sign/action/"}}'
