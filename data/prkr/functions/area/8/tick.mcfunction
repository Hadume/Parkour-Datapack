#> prkr:area/8/tick
# エリア８常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[gamemode=adventure,predicate=prkr:area/8] unless score @s Area matches 80..89 run function prkr:area/8/player
## 範囲外に出たMOBを削除
  execute as @e[type=#prkr:living,tag=Area8] at @s unless predicate prkr:area/8 run function prkr:area/kill
## エリアリセット
  execute unless entity @a[predicate=prkr:area/8] run function prkr:area/8/reset
