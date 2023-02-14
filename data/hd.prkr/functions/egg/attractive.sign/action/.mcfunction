#> hd.prkr:egg/attractive.sign/action/
# 看板がクリックされたら
# @within function hd.prkr:egg/attractive.sign/

## 看板クリック時の関数
	function #prkr:sign.clicked
## クリエイティブだったら
  execute if entity @s[gamemode=creative,predicate=!hd.prkr:having.dye] run function hd.prkr:egg/attractive.sign/action/creative
