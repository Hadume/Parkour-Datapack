#> prkr:area/4/reset
# エリア４リセット
# @within function
#   prkr:area/4/tick
#   prkr:area/4/

## エリア状態リセット
  scoreboard players set #Area.4 Global 0
## ブロック削除
## ブロック設置
## MOB削除
  execute as @e[type=item] at @s if predicate prkr:area/4 run kill @s
  execute as @e[tag=Area4] at @s run function prkr:area/kill
## スケジュール解消
