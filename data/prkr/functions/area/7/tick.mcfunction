#> prkr:area/7/tick
# エリア７常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[gamemode=adventure,predicate=prkr:area/7] unless score @s Area matches 70..79 run function prkr:area/7/player
## エリアリセット
  execute unless entity @a[predicate=prkr:area/7] run function prkr:area/7/reset