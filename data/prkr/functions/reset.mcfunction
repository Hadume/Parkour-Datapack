#> prkr:reset
# リセット
# @within function prkr:tick

## 範囲外に出たら
  execute if score @s Area matches 10..19 run function prkr:area/1/player
  execute if score @s Area matches 20..29 run function prkr:area/2/player
  execute if score @s Area matches 30..39 run function prkr:area/3/player
  execute if score @s Area matches 40..49 run function prkr:area/4/player
  execute if score @s Area matches 50..59 run function prkr:area/5/player
  execute if score @s Area matches 60..69 run function prkr:area/6/player
  execute if score @s Area matches 70..79 run function prkr:area/7/player
  execute if score @s Area matches 80..89 run function prkr:area/8/player
