#> prkr:area/2/player/player
# エリア２プレイヤー
# @within function
#   prkr:area/2/player/
#   prkr:sign.clicked
#   prkr:reset

## エリアリセット
  function prkr:area/2/
## tp
  execute if predicate hd.prkr:reset
## プレイヤーリセット
  function hd.prkr:reset/
## アイテム渡す
