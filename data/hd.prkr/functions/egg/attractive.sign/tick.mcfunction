#> hd.prkr:egg/attractive.sign/tick
#
# 看板で常時実行
#
# @within function hd.prkr:tick/

#> Tags
# @private
# @within function hd.prkr:egg/atractive.sign/
 #declare tag HdP.ASign.Put
## 何も書かれていない状態へ
	execute if entity @s[nbt={data:{HdP:{ASign:{Put:1b}}}}] unless block ~ ~ ~ #minecraft:signs run data modify entity @s data.HdP.ASign.Put set value 0b
## 何か書かれたら
	execute if entity @s[tag=HdP.ASign.Put] run function hd.prkr:egg/attractive.sign/
	execute if entity @s[nbt={data:{HdP:{ASign:{Put:0b}}}}] if block ~ ~ ~ #minecraft:signs run tag @s add HdP.ASign.Put
