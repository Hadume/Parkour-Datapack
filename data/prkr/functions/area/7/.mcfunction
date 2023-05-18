#> prkr:area/7/
# エリア７初期化
# @within function
#   prkr:tick
#   prkr:area/7/player

#> Tags
# @within function prkr:area/7/**
 #declare tag Area7
#> ScoreHolder
# @within function
#   prkr:area/7/**
#   prkr:tick
#   prkr:init
 #declare score_holder $Area.7
## エリアリセット
  function prkr:area/7/reset
## エリア状態設定
  scoreboard players set $Area.7 Global 2
