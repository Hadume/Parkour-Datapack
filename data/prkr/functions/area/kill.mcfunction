#> prkr:area/kill
# リセット
# @within function
#   prkr:area/*/reset
#   prkr:area/*/tick

## 
  tp @s ~ -3000 ~
  kill @s
## 自然消滅するように
  data modify entity @s PersistenceRequired set value 0b
