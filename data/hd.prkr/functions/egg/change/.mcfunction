#> hd.prkr:egg/change/
#
# マーカーの情報を変える
#
# @within function hd.prkr:sneak.time

#> Tags
# @within function hd.prkr:egg/change/*
 #declare tag HdP.This
##
	execute if data storage hd.p: SelectedItemCopy.tag.HdP.Laser run function hd.prkr:egg/change/rotation
	execute if data storage hd.p: SelectedItemCopy.tag.HdP.Start run function hd.prkr:egg/change/rotation

	execute if data storage hd.p: SelectedItemCopy.tag.HdP.CGArea run function hd.prkr:egg/change/gamemode
## Tagを外す
	execute as @e[type=marker,tag=HdP.This] run tag @s remove HdP.This
