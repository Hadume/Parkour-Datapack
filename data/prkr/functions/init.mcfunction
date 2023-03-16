#> prkr:init
# 初期化
# @within function prkr:load

#> Storage
# @internal
 #declare storage prkr:
 #declare storage prkr.temp:
## 初期化完了
  data modify storage prkr: Init set value 1b
#> Scoreboard
# @internal
  scoreboard objectives add Global dummy
  scoreboard objectives add Temp dummy
  scoreboard objectives add Const dummy
  scoreboard objectives add Area dummy
## エリア初期化
  data modify storage prkr: Area.1 set value 0b
  data modify storage prkr: Area.2 set value 0b
  data modify storage prkr: Area.3 set value 0b
  data modify storage prkr: Area.4 set value 0b
  data modify storage prkr: Area.5 set value 0b
