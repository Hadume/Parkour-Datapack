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
## プレイヤーリセット
  function hd.prkr:reset/
## アイテム渡す
