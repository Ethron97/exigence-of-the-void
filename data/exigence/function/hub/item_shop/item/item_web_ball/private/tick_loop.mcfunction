# Called from player/tick/tick right after snowball check

#=============================================================================================================

#say Snowball tick loop

# TP markers to snowballs
#execute as @e[type=snowball] at @s run function exigence:hub/item_shop/item/item_web_ball/private/tp_marker_to_snowball
execute as @e[distance=..1000,type=minecraft:snowball] at @s on origin run tp @s ~ ~ ~

# For each snowball marker, update
execute as @e[distance=..1000,type=minecraft:marker,tag=SnowballMarker] at @s run function exigence:hub/item_shop/item/item_web_ball/private/update_snowball
