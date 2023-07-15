#> prkr:area/6/tick
# エリア６常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[gamemode=adventure,predicate=prkr:area/6] unless score @s Area matches 60..69 run function prkr:area/6/player
## 範囲外に出たMOBを削除
  execute as @e[type=#prkr:living,tag=Area6] at @s unless predicate prkr:area/6 run function prkr:area/kill
## エリアリセット
  execute unless entity @a[predicate=prkr:area/6] run function prkr:area/6/reset
