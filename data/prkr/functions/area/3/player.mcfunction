#> prkr:area/3/player
# エリア３プレイヤー
# @within function
#   prkr:sign.clicked
#   prkr:area/3/tick
#   prkr:reset

## エリアリセット
  function prkr:area/3/
## スコア設定
  scoreboard players set @s Area 30
## プレイヤーリセット
  function hd.prkr:reset/
## tp
## アイテム渡す
