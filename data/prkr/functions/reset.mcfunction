#> prkr:reset
# リセット
# @within function prkr:tick

## 範囲外に出たら
  execute if block ~ ~ ~ light[level=0] if score @s Area matches 10..19 run function prkr:area/1/player
  execute if block ~ ~ ~ light[level=0] if score @s Area matches 20..29 run function prkr:area/2/player
  execute if block ~ ~ ~ light[level=0] if score @s Area matches 30..39 run function prkr:area/3/player
  execute if block ~ ~ ~ light[level=0] if score @s Area matches 40..49 run function prkr:area/4/player
  execute if block ~ ~ ~ light[level=0] if score @s Area matches 50..59 run function prkr:area/5/player
## 着地不能ブロックだったら
  execute if block ~ ~ ~ light[level=1] if data entity @s {OnGround:1b} if score @s Area matches 10..19 run function prkr:area/1/player
  execute if block ~ ~ ~ light[level=1] if data entity @s {OnGround:1b} if score @s Area matches 20..29 run function prkr:area/2/player
  execute if block ~ ~ ~ light[level=1] if data entity @s {OnGround:1b} if score @s Area matches 30..39 run function prkr:area/3/player
  execute if block ~ ~ ~ light[level=1] if data entity @s {OnGround:1b} if score @s Area matches 40..49 run function prkr:area/4/player
  execute if block ~ ~ ~ light[level=1] if data entity @s {OnGround:1b} if score @s Area matches 50..59 run function prkr:area/5/player
