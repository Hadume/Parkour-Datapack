#> prkr:area/8/
# エリア８初期化
# @within function
#   prkr:tick
#   prkr:area/8/player

#> Tags
# @within function prkr:area/8/**
 #declare tag Area8
#> ScoreHolder
# @within function
#   prkr:area/8/**
#   prkr:tick
#   prkr:init
 #declare score_holder $Area.8
## エリアリセット
  function prkr:area/8/reset
## エリア状態設定
  scoreboard players set $Area.8 Global 2
