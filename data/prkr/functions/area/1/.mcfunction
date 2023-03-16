#> prkr:area/1/
# エリア１初期化
# @within function
#   prkr:tick
#   prkr:area/1/player

#> Tags
# @within function prkr:area/1/**
 #declare tag Area1
## エリアリセット
  function prkr:area/1/reset
## エリア状態設定
  data modify storage prkr: Area.1 set value 1b
