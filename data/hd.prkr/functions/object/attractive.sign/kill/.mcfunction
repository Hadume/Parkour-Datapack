#> hd.prkr:object/attractive.sign/kill/
# 簡易看板を消す
# @within function hd.prkr:object/kill

#> Tags
# @private
 #declare tag HdP.TextAS
## 看板更新
	data modify block ~ ~ ~ front_text merge value {has_glowing_text:0b,color:"black"}
	data modify block ~ ~ ~ back_text merge value {has_glowing_text:0b,color:"black"}
## 看板に文字を代入
  summon armor_stand ~ -65 ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Small:1b,HandItems:[{id:"cod",Count:1b},{}],Tags:["HdP.TextAS"]}
  execute as @e[type=armor_stand,tag=HdP.TextAS] run function hd.prkr:object/attractive.sign/kill/as
## 自身を消す
  kill @s
