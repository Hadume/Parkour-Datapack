#> prkr:area/1/player
# エリア１プレイヤー
# @within function
#   prkr:sign.clicked
#   prkr:area/1/tick
#   prkr:reset
#   prkr:tick

## エリアリセット
  function prkr:area/1/
## スコア設定
  scoreboard players set @s Area 10
## プレイヤーリセット
  function hd.prkr:reset/
## tp
## アイテム渡す
