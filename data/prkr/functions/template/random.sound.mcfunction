#> prkr:template/random.sound
# 
# @within 

## 
  execute as @a[scores={Area=0..0}] at @s run playsound text master @s ~ ~ ~ 1 2
  execute as @a[scores={Area=0..0}] at @s if predicate prkr:chance/0.5 run playsound text master @s ~ ~ ~ 1 2
  execute as @a[scores={Area=0..0}] at @s if predicate prkr:chance/0.5 run playsound text master @s ~ ~ ~ 1 1.5
  execute as @a[scores={Area=0..0}] at @s if predicate prkr:chance/0.5 run playsound text master @s ~ ~ ~ 1 1
  execute as @a[scores={Area=0..0}] at @s if predicate prkr:chance/0.5 run playsound text master @s ~ ~ ~ 1 0.5
