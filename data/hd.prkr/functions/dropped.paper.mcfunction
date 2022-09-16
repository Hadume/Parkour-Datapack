#> hd.prkr:dropped.paper
#
# 紙を落としたら
#
# @within function hd.prkr:tick/players

## リセットタグを追加
	execute anchored eyes positioned ^ ^ ^ if entity @e[type=item,nbt={Item:{tag:{HdP:{Reset:1b}}}},distance=..1.5] run tag @s add HdP.Reset
## リセット紙を消す
	execute as @e[type=item,nbt={Item:{tag:{HdP:{Reset:1b}}}}] run kill @s
## スコアをリセット
	scoreboard players reset @s HdP.Dropped.Paper
