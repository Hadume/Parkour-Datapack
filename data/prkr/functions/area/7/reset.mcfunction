#> prkr:area/7/reset
# エリア７リセット
# @within function
#   prkr:area/7/tick
#   prkr:area/7/

## エリア状態リセット
  scoreboard players set $Area.7 Global 0
## ブロック削除
  execute as @e[type=marker,tag=HdP.Remove] at @s if predicate prkr:area/7 unless block ~ ~ ~ air run setblock ~ ~ ~ air
## ブロック設置
## MOB削除
  execute as @e[type=item] at @s if predicate prkr:area/7 run kill @s
  execute as @e[tag=Area7] at @s run function prkr:area/kill
## スケジュール解消
