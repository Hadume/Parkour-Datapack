#> prkr:area/1/tick
# エリア１常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[predicate=prkr:area/1] unless score @s Area matches 10..19 run function prkr:area/1/player/
## 範囲外に出たMOBを削除
  execute as @e[type=#prkr:living,tag=Area1] at @s unless predicate prkr:area/1 run function prkr:area/kill
## エリアリセット
  execute unless entity @a[predicate=prkr:area/1] run function prkr:area/1/reset
