#> hd.prkr:egg/attractive.sign/waiting
#
# 看板が置かれるのを待ってる
#
# @within function hd.prkr:egg/attractive.sign/tick

## 何か書かれて2tick経ったら
	execute if entity @s[scores={HdP.Global=2..}] run function hd.prkr:egg/attractive.sign/
## 看板が在ったら
	execute if block ~ ~ ~ #signs run scoreboard players add @s HdP.Global 1
## 看板が無かったら
	execute unless block ~ ~ ~ #signs if entity @s[scores={HdP.Global=1..}] run scoreboard players reset @s HdP.Global
