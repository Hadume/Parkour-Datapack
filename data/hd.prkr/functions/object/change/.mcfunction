#> hd.prkr:object/change/
# Markerの情報を変える
# @within function hd.prkr:score/sneak.time

#> Tags
# @within function hd.prkr:object/change/*
 #declare tag HdP.This
##
	execute if data storage hd.p: {SelectedItemCopy:{tag:{HdP:{CGArea:1b}}}} run function hd.prkr:object/change/gamemode
## Tagを外す
	execute as @e[type=marker,tag=HdP.This] run tag @s remove HdP.This
