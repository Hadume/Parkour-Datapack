#> hd.prkr:egg/attractive.sign/
#
# 簡単看板
#
# @within function hd.prkr:egg/attractive.sign/tick

## 看板置かれた
	execute unless data entity @s {data:{HdP:{ASign:{Put:1b}}}} run data modify entity @s data.HdP.ASign.Put set value 1b
## 看板更新
	execute if data entity @s {data:{HdP:{ASign:{Enable:1b}}}} run function hd.prkr:egg/attractive.sign/change
	execute if data entity @s {data:{HdP:{ASign:{Enable:0b}}}} run data modify block ~ ~ ~ {} merge value {GlowingText:0b,Color:"black"}
##
	data modify block ~ ~ ~ Text1 set value '{"block":"~ ~ ~","nbt":"Text1","interpret":true,"clickEvent":{"action":"run_command","value":"/execute if entity @s[gamemode=creative] align xyz positioned ~0.5 ~ ~0.5 as @e[type=marker,tag=HdP.ASign,distance=..0.001] store success entity @s data.HdP.ASign.Enable byte 1 if data entity @s {data:{HdP:{ASign:{Enable:0b}}}}"}}'
	data modify block ~ ~ ~ Text2 set value '{"block":"~ ~ ~","nbt":"Text2","interpret":true,"clickEvent":{"action":"run_command","value":"/execute if entity @s[gamemode=creative] align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=marker,tag=HdP.ASign,distance=..0.001,nbt={data:{HdP:{ASign:{Enable:1b}}}}] run tellraw @s [{\\"text\\":\\"[パルクールシステム] \\"},{\\"text\\":\\"看板を見易くしました！\\",\\"color\\":\\"green\\"}]"}}'
	data modify block ~ ~ ~ Text3 set value '{"block":"~ ~ ~","nbt":"Text3","interpret":true,"clickEvent":{"action":"run_command","value":"/execute if entity @s[gamemode=creative] align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=marker,tag=HdP.ASign,distance=..0.001,nbt={data:{HdP:{ASign:{Enable:0b}}}}] run tellraw @s [{\\"text\\":\\"[パルクールシステム] \\"},{\\"text\\":\\"通常に戻しました！\\",\\"color\\":\\"red\\"}]"}}'
	data modify block ~ ~ ~ Text4 set value '{"block":"~ ~ ~","nbt":"Text4","interpret":true,"clickEvent":{"action":"run_command","value":"/execute if entity @s[gamemode=creative] align xyz positioned ~0.5 ~ ~0.5 as @e[type=marker,tag=HdP.ASign,distance=..0.001] at @s run function hd.prkr:egg/attractive.sign/"}}'
## 仮Tagを外す
	tag @s remove HdP.ASign.Put
