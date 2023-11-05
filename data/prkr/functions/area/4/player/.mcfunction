#> prkr:area/4/player/
# 
# @within function prkr:area/4/tick

## スコア設定
  scoreboard players set @s Area 40
## プレイヤー
  execute if entity @s[gamemode=adventure] run function prkr:area/4/player/player
