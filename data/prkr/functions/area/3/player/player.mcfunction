#> prkr:area/3/player/player
# エリア３プレイヤー
# @within function
#   prkr:area/3/player/
#   prkr:sign.clicked
#   prkr:reset

## エリアリセット
  function prkr:area/3/
## tp
  execute if predicate hd.prkr:reset
  execute if entity @s[tag=HdP.Reset]
## プレイヤーリセット
  function hd.prkr:reset/
## アイテム渡す
