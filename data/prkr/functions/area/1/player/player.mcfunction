#> prkr:area/1/player/player
# エリア１プレイヤー
# @within function
#   prkr:area/1/player/
#   prkr:sign.clicked
#   prkr:reset
#   prkr:tick

## エリアリセット
  function prkr:area/1/
## tp
  execute if predicate hd.prkr:reset
  execute if entity @s[tag=HdP.Reset]
## プレイヤーリセット
  function hd.prkr:reset/
## アイテム渡す
