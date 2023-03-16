#> prkr:area/5/tick
# エリア５常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[predicate=prkr:area/5] unless score @s Area matches 50..59 run function prkr:area/5/player
## エリアリセット
  execute unless entity @a[predicate=prkr:area/5] run function prkr:area/5/reset
