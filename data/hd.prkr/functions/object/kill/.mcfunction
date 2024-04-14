#> hd.prkr:object/kill/
# 卵から生まれたものを消す
# @within function hd.prkr:offhand

## 一番近くの物を消す
	execute if data storage hd.p: {OffHandCopy:{tag:{HdP:["CGArea"]}}} store success storage hd.p: Success byte 1 run kill @e[type=marker,tag=HdP.CGArea,distance=..4,sort=nearest,limit=1]
	execute if data storage hd.p: {OffHandCopy:{tag:{HdP:["ASign"]}}} as @e[type=marker,tag=HdP.ASign,distance=..4,sort=nearest,limit=1] at @s run function hd.prkr:object/attractive.sign/kill/
## 消したら
	execute if data storage hd.p: {Success:1b} run function hd.prkr:object/kill/success
