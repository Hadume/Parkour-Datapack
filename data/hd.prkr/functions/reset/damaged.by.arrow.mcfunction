#> hd.prkr:reset/damaged.by.arrow
# 矢を喰らったらリセット
# @within advancement hd.prkr:damaged.by.arrow

## リセットタグを追加
	tag @s add HdP.Reset
## 進捗を剝奪
	advancement revoke @s only hd.prkr:damaged.by.arrow
