#> prkr:area/8/reset
# エリア８リセット
# @within function
#   prkr:area/8/tick
#   prkr:area/8/

## エリア状態リセット
  scoreboard players set $Area.8 Global 0
## ブロック削除
  execute as @e[type=marker,tag=HdP.Remove] at @s if predicate prkr:area/8 unless block ~ ~ ~ air run setblock ~ ~ ~ air
## ブロック設置
## MOB削除
  execute as @e[type=item] at @s if predicate prkr:area/8 run kill @s
  execute as @e[tag=Area8] at @s run tp @s ~ -3000 ~
  execute as @e[tag=Area8] at @s run kill @s
## スケジュール解消
