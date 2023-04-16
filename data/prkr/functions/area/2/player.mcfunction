#> prkr:area/2/player
# エリア２プレイヤー
# @within function
#   prkr:sign.clicked
#   prkr:area/2/tick
#   prkr:reset

## エリアリセット
  function prkr:area/2/
## スコア設定
  scoreboard players set @s Area 20
## プレイヤーリセット
  function hd.prkr:reset/
## tp
  execute if predicate hd.prkr:reset
  execute if entity @s[tag=HdP.Reset]
## アイテム渡す
