#> hd.prkr:egg/attractive.sign/
#
# 簡単看板
#
# @within function
#   hd.prkr:egg/attractive.sign/tick
#   hd.prkr:egg/attractive.sign/action/creative

## 看板置かれた
	execute unless data entity @s {data:{HdP:{ASign:{Put:1b}}}} run data modify entity @s data.HdP.ASign.Put set value 1b
## 看板更新
	execute if data entity @s {data:{HdP:{ASign:{Enable:1b}}}} run function hd.prkr:egg/attractive.sign/change
	execute if data entity @s {data:{HdP:{ASign:{Enable:0b}}}} run data modify block ~ ~ ~ {} merge value {GlowingText:0b,Color:"black"}
## 看板にコマンドを代入
	data modify block ~ ~ ~ Text4 set value '{"block":"~ ~ ~","nbt":"Text4","interpret":true,"clickEvent":{"action":"run_command","value":"/execute align xyz positioned ~0.5 ~ ~0.5 run function hd.prkr:egg/attractive.sign/action/"}}'
