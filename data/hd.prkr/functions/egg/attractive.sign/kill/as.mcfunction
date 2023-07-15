#> hd.prkr:egg/attractive.sign/kill/as
# 
# @within function hd.prkr:egg/attractive.sign/kill/

## 前
  item modify entity @s weapon.mainhand hd.prkr:sign/front
  data modify block ~ ~ ~ front_text.messages[-1] set from entity @s HandItems[-2].tag.display.Name
## 後ろ
  item modify entity @s weapon.mainhand hd.prkr:sign/back
  data modify block ~ ~ ~ back_text.messages[-1] set from entity @s HandItems[-2].tag.display.Name
## 仮ASを消す
  kill @s
