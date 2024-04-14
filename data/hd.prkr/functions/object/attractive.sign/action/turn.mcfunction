#> hd.prkr:object/attractive.sign/action/turn
# クリエイティブだったら
# @within function hd.prkr:object/attractive.sign/action/

#> Tags
# @private
 #declare tag HdP.This
## Markerを一体に絞る
  tag @e[type=marker,tag=HdP.ASign,distance=..0.001] add HdP.This
## 0⇔1
  execute as @e[tag=HdP.This] store success entity @s data.HdP.ASign.Enable byte 1 if data entity @s {data:{HdP:{ASign:{Enable:0b}}}}
## 
  execute if entity @e[tag=HdP.This,nbt={data:{HdP:{ASign:{Enable:1b}}}}] run tellraw @s [{"text":"\n[パルクールシステム] "},{"text":"看板を見易くしました！","color":"green"}]
  execute if entity @e[tag=HdP.This,nbt={data:{HdP:{ASign:{Enable:0b}}}}] run tellraw @s [{"text":"\n[パルクールシステム] "},{"text":"通常に戻しました！","color":"red"}]
## 
  execute as @e[tag=HdP.This] at @s run function hd.prkr:object/attractive.sign/
## tagを削除
  tag @e[tag=HdP.This] remove HdP.This
