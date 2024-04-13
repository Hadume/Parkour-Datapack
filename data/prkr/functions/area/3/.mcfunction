#> prkr:area/3/
# エリア３初期化
# @within function
#   prkr:tick
#   prkr:area/3/player/player

#> Tags
# @within function prkr:area/3/**
 #declare tag Area3
#> ScoreHolder
# @within function
#   prkr:area/3/**
#   prkr:tick
#   prkr:init
 #declare score_holder #Area.3
## エリアリセット
  function prkr:area/3/reset
## エリア状態設定
  scoreboard players set #Area.3 Global 2
