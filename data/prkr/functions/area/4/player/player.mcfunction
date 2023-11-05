#> prkr:area/4/player/player
# エリア４プレイヤー
# @within function
#   prkr:area/4/player/
#   prkr:sign.clicked
#   prkr:reset

## エリアリセット
  function prkr:area/4/
## tp
  execute if predicate hd.prkr:reset
  execute if entity @s[tag=HdP.Reset]
## プレイヤーリセット
  function hd.prkr:reset/
## アイテム渡す
