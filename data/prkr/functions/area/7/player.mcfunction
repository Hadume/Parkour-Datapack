#> prkr:area/7/player
# エリア７プレイヤー
# @within function
#   prkr:sign.clicked
#   prkr:area/7/tick
#   prkr:reset

## エリアリセット
  function prkr:area/7/
## スコア設定
  scoreboard players set @s Area 70
## プレイヤーリセット
  function hd.prkr:reset/
## tp
  execute if predicate hd.prkr:reset
  execute if entity @s[tag=HdP.Reset]
## アイテム渡す
