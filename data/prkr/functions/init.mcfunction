#> prkr:init
# 初期化
# @within function prkr:load

#> Storage
# @internal
 #declare storage prkr:
 #declare storage prkr.temp:
#> Tags
# @internal
 #declare tag Init
## 初期化完了
  data modify storage prkr: Init set value 1b
#> Scoreboard
# @internal
  scoreboard objectives add Global dummy
  scoreboard objectives add Temp dummy
  scoreboard objectives add Const dummy
  scoreboard objectives add Area dummy
## エリア読み込み用Entity
  #summon marker 0 0 0 {UUID:[I; 512, 512, 0, 1]}
  #summon marker 0 0 0 {UUID:[I; 512, 512, 0, 2]}
  #summon marker 0 0 0 {UUID:[I; 512, 512, 0, 3]}
  #summon marker 0 0 0 {UUID:[I; 512, 512, 0, 4]}
## エリア初期化
  scoreboard players set $Area.1 Global 0
  scoreboard players set $Area.2 Global 0
  scoreboard players set $Area.3 Global 0
  scoreboard players set $Area.4 Global 0
