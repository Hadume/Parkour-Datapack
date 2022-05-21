#> hd.prkr:damaged.by.arrow
#
# 矢を喰らったらリセット
#
# @within advancement hd.prkr:damaged.by.arrow

## リセット
	function hd.prkr:reset
## 進捗を剝奪
	advancement revoke @s only hd.prkr:damaged.by.arrow
