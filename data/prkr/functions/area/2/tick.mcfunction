#> prkr:area/2/tick
# エリア２常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[predicate=prkr:area/2] unless score @s Area matches 20..29 run function prkr:area/2/player
## エリアリセット
  execute unless entity @a[predicate=prkr:area/2] run function prkr:area/2/reset
