#> prkr:area/5/tick
# エリア５常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[gamemode=adventure,predicate=prkr:area/5] unless score @s Area matches 50..59 run function prkr:area/5/player
## 範囲外に出たMOBを削除
  execute as @e[type=#prkr:living,tag=Area5] at @s unless predicate prkr:area/1 run function prkr:area/kill
## エリアリセット
  execute unless entity @a[predicate=prkr:area/5] run function prkr:area/5/reset
