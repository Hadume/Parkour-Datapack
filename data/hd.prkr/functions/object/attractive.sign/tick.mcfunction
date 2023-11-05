#> hd.prkr:object/attractive.sign/tick
# 看板で常時実行
# @within function hd.prkr:tick/marker

## 何も書かれていない状態へ
	execute if entity @s[nbt={data:{HdP:{ASign:{Put:1b}}}}] unless block ~ ~ ~ #signs run data modify entity @s data.HdP.ASign.Put set value 0b
## 看板が置かれるのを待ってる
	execute if entity @s[nbt={data:{HdP:{ASign:{Put:0b}}}}] if block ~ ~ ~ #signs run function hd.prkr:object/attractive.sign/
