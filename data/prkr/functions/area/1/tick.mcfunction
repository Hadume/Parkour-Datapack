#> prkr:area/1/tick
# エリア１常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[predicate=prkr:area/1] unless score @s Area matches 10..19 run function prkr:area/1/player
## エリアリセット
  execute unless entity @a[predicate=prkr:area/1] run function prkr:area/1/reset
