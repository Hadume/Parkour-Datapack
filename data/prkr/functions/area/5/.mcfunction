#> prkr:area/5/
# エリア５初期化
# @within function
#   prkr:tick
#   prkr:area/5/player

#> Tags
# @within function prkr:area/5/**
 #declare tag Area5
## エリアリセット
  function prkr:area/5/reset
## エリア状態設定
  data modify storage prkr: Area.5 set value 1b
