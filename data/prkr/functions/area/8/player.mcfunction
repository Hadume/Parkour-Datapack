#> prkr:area/8/player
# エリア８プレイヤー
# @within function
#   prkr:sign.clicked
#   prkr:area/8/tick
#   prkr:reset

## エリアリセット
  function prkr:area/8/
## スコア設定
  scoreboard players set @s Area 80
## プレイヤーリセット
  function hd.prkr:reset/
## tp
  execute if predicate hd.prkr:reset
  execute if entity @s[tag=HdP.Reset]
## アイテム渡す
