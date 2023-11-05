#> prkr:area/2/
# エリア２初期化
# @within function
#   prkr:tick
#   prkr:area/2/player/player

#> Tags
# @within function prkr:area/2/**
 #declare tag Area2
#> ScoreHolder
# @within function
#   prkr:area/2/**
#   prkr:tick
#   prkr:init
 #declare score_holder $Area.2
## エリアリセット
  function prkr:area/2/reset
## エリア状態設定
  scoreboard players set $Area.2 Global 2
