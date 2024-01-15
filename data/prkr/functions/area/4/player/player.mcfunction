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
## プレイヤーリセット
  function hd.prkr:reset/
## アイテム渡す
