#> hd.prkr:egg/attractive.sign/action
# 
# @within function hd.prkr:egg/attractive.sign/

## 
  execute as @e[type=marker,tag=HdP.ASign,distance=..0.001] store success entity @s data.HdP.ASign.Enable byte 1 if data entity @s {data:{HdP:{ASign:{Enable:0b}}}}
## 
  execute if entity @e[type=marker,tag=HdP.ASign,nbt={data:{HdP:{ASign:{Enable:1b}}}},distance=..0.001] run tellraw @s [{"text":"[パルクールシステム] "},{"text":"看板を見易くしました！","color":"green"}]
  execute if entity @e[type=marker,tag=HdP.ASign,nbt={data:{HdP:{ASign:{Enable:0b}}}},distance=..0.001] run tellraw @s [{"text":"[パルクールシステム] "},{"text":"通常に戻しました！","color":"red"}]
## 看板クリック時の関数
	function #prkr:sign.clicked
## 
  execute as @e[type=marker,tag=HdP.ASign,distance=..0.001] at @s run function hd.prkr:egg/attractive.sign/
