#> prkr:template/random.sound
# 
# @within 

## 
  execute as @a[scores={Area=0..0}] at @s if predicate prkr:chance/0.5 run playsound text master @s ~ ~ ~ 0.5 2
  execute as @a[scores={Area=0..0}] at @s if predicate prkr:chance/0.5 run playsound text block @s ~ ~ ~ 0.5 1.5
  execute as @a[scores={Area=0..0}] at @s if predicate prkr:chance/0.5 run playsound text block @s ~ ~ ~ 0.5 1
  execute as @a[scores={Area=0..0}] at @s if predicate prkr:chance/0.5 run playsound text block @s ~ ~ ~ 0.5 0.5
