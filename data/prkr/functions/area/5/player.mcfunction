#> prkr:area/5/player
# エリア５プレイヤー
# @within function
#   prkr:sign.clicked
#   prkr:area/5/tick
#   prkr:reset

## エリアリセット
  function prkr:area/5/
## スコア設定
  scoreboard players set @s Area 50
## プレイヤーリセット
  function hd.prkr:reset/
## tp
## アイテム渡す
