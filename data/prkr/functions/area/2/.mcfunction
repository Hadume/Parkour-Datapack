#> prkr:area/2/
# エリア２初期化
# @within function
#   prkr:tick
#   prkr:area/2/player

#> Tags
# @within function prkr:area/2/**
 #declare tag Area2
## エリアリセット
  function prkr:area/2/reset
## エリア状態設定
  data modify storage prkr: Area.2 set value 1b
