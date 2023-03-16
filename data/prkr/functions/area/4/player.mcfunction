#> prkr:area/4/player
# エリア４プレイヤー
# @within function
#   prkr:sign.clicked
#   prkr:area/4/tick
#   prkr:reset

## エリアリセット
  function prkr:area/4/
## スコア設定
  scoreboard players set @s Area 40
## プレイヤーリセット
  function hd.prkr:reset/
## tp
## アイテム渡す
