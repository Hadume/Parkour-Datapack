#> prkr:area/1/player
# エリア１プレイヤー
# @within function
#   prkr:sign.clicked
#   prkr:area/1/tick
#   prkr:reset

## エリアリセット
  function prkr:area/1/
## スコア設定
  scoreboard players set @s Area 10
## プレイヤーリセット
  function hd.prkr:reset/
## tp
  execute if predicate hd.prkr:reset
  execute if entity @s[tag=HdP.Reset]
## アイテム渡す