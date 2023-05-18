#> prkr:area/5/
# エリア５初期化
# @within function
#   prkr:tick
#   prkr:area/5/player

#> Tags
# @within function prkr:area/5/**
 #declare tag Area5
#> ScoreHolder
# @within function
#   prkr:area/5/**
#   prkr:tick
#   prkr:init
 #declare score_holder $Area.5
## エリアリセット
  function prkr:area/5/reset
## エリア状態設定
  scoreboard players set $Area.5 Global 2
