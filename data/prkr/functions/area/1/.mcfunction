#> prkr:area/1/
# エリア１初期化
# @within function
#   prkr:tick
#   prkr:area/1/player/player

#> Tags
# @within function prkr:area/1/**
 #declare tag Area1
#> ScoreHolder
# @within function
#   prkr:area/1/**
#   prkr:tick
#   prkr:init
 #declare score_holder $Area.1
## エリアリセット
  function prkr:area/1/reset
## エリア状態設定
  scoreboard players set $Area.1 Global 2
