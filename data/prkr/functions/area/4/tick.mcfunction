#> prkr:area/4/tick
# エリア４常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[predicate=prkr:area/4] unless score @s Area matches 40..49 run function prkr:area/4/player
## エリアリセット
  execute unless entity @a[predicate=prkr:area/4] run function prkr:area/4/reset
