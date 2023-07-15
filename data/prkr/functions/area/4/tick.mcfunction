#> prkr:area/4/tick
# エリア４常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[gamemode=adventure,predicate=prkr:area/4] unless score @s Area matches 40..49 run function prkr:area/4/player
## 範囲外に出たMOBを削除
  execute as @e[type=#prkr:living,tag=Area4] at @s unless predicate prkr:area/4 run function prkr:area/kill
## エリアリセット
  execute unless entity @a[predicate=prkr:area/4] run function prkr:area/4/reset
