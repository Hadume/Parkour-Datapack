#> prkr:area/6/player
# エリア６プレイヤー
# @within function
#   prkr:sign.clicked
#   prkr:area/6/tick
#   prkr:reset

## エリアリセット
  function prkr:area/6/
## スコア設定
  scoreboard players set @s Area 60
## プレイヤーリセット
  function hd.prkr:reset/
## tp
  execute if predicate hd.prkr:reset
  execute if entity @s[tag=HdP.Reset]
## アイテム渡す
