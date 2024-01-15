#> prkr:sign.clicked
# 看板をクリックした時の処理
# @within tag/function prkr:sign.clicked

## ゲームモードを変更
  execute if entity @s[gamemode=!adventure] run gamemode adventure
## 実行
  execute if data block ~ ~ ~ {x:0,y:0,z:0} at @s run function prkr:area/1/player/player
  execute if data block ~ ~ ~ {x:0,y:0,z:0} at @s run function prkr:area/2/player/player
  execute if data block ~ ~ ~ {x:0,y:0,z:0} at @s run function prkr:area/3/player/player
  execute if data block ~ ~ ~ {x:0,y:0,z:0} at @s run function prkr:area/4/player/player
