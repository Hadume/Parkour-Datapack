#> prkr:area/4/
# エリア４初期化
# @within function
#   prkr:tick
#   prkr:area/4/player/*

#> ScoreHolder
# @within function
#   prkr:area/4/**
#   prkr:tick
#   prkr:init
 #declare score_holder #Area.4
#> Tags
# @within function prkr:area/4/**
 #declare tag Area4
## エリアリセット
  function prkr:area/4/reset
## エリア状態設定
  scoreboard players set #Area.4 Global 2
