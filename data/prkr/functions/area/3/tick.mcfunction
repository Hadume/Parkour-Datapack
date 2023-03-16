#> prkr:area/3/tick
# エリア３常時実行
# @within function prkr:tick

## プレイヤー初期化
  execute as @a[gamemode=adventure,predicate=prkr:area/3] unless score @s Area matches 30..39 run function prkr:area/3/player
## エリアリセット
  execute unless entity @a[predicate=prkr:area/3] run function prkr:area/3/reset
