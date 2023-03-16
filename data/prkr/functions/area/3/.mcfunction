#> prkr:area/3/
# エリア３初期化
# @within function
#   prkr:tick
#   prkr:area/3/player

#> Tags
# @within function prkr:area/3/**
 #declare tag Area3
## エリアリセット
  function prkr:area/3/reset
## エリア状態設定
  data modify storage prkr: Area.3 set value 1b
