#> hd.prkr:object/attractive.sign/action/
# 看板がクリックされたら
# @within function hd.prkr:object/attractive.sign/

#> Tags
# @private
# @within predicate hd.prkr:reset
 #declare tag HdP.Sign.Clicked
#> Function
# @private
 #declare tag/function prkr:sign.clicked
## 看板クリックしたタグを追加
  tag @s add HdP.Sign.Clicked
## 看板クリック時の関数
	function #prkr:sign.clicked
## 看板クリックしたタグを削除
  tag @s remove HdP.Sign.Clicked
## クリエイティブだったら
  execute if entity @s[nbt={SelectedItem:{tag:{HdP:["ASign"]}}}] run function hd.prkr:object/attractive.sign/action/turn
