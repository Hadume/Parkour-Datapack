#> hd.prkr:tick/marker
# Markerで常時実行
# @within function hd.prkr:tick/

## ゲームモード変更エリア
	execute if entity @s[tag=HdP.CGArea] if entity @a[distance=..8] run function hd.prkr:object/gamemode.area/particle
## 看板の情報を取得
	execute if entity @s[tag=HdP.ASign] run function hd.prkr:object/attractive.sign/tick
