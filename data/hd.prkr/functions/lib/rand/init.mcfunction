#> hd.prkr:lib/rand/init
#
# 疑似乱数初期化
#
# @within function hd.prkr:init

#> ScoreHolder
# @within function hd.prkr:lib/rand/*
 #declare score_holder $Rand.Current
 #declare score_holder $Rand.Carry
#> Tags
# @private
# @within function hd.prkr:init
 #declare tag HdP.Marker
## 現在値を取得
	execute as @e[type=marker,tag=HdP.Marker] store result score $Rand.Current HdP.Global run data get entity @s UUID[0]
## キャリー設定
	execute as @e[type=marker,tag=HdP.Marker] store result score $Rand.Carry HdP.Global run data get entity @s UUID[1]
## チャンク読み込みを止める
	forceload remove 0 0 0 0
## マーカーを消す
	execute as @e[type=marker,tag=HdP.Marker] run kill @s
