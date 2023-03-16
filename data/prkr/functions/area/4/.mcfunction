#> prkr:area/4/
# エリア４初期化
# @within function
#   prkr:tick
#   prkr:area/4/player

#> Tags
# @within function prkr:area/4/**
 #declare tag Area4
## エリアリセット
  function prkr:area/4/reset
## エリア状態設定
  data modify storage prkr: Area.4 set value 1b
