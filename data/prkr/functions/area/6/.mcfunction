#> prkr:area/6/
# エリア６初期化
# @within function
#   prkr:tick
#   prkr:area/6/player

#> Tags
# @within function prkr:area/6/**
 #declare tag Area6
#> ScoreHolder
# @within function
#   prkr:area/6/**
#   prkr:tick
#   prkr:init
 #declare score_holder $Area.6
## エリアリセット
  function prkr:area/6/reset
## エリア状態設定
  scoreboard players set $Area.6 Global 2
