# Called from player/tick/tick right after snowball check

#====================================================================================================

#say (D3) Snowball tick loop

# TP markers to snowballs
#execute as @e[type=snowball] at @s run function exigence:hub/item_shop/item/item_web_ball/private/tp_marker_to_snowball
execute as @e[type=minecraft:snowball,distance=..1000] at @s on origin run tp @s ~ ~ ~

# For each snowball marker, update
execute as @e[type=minecraft:marker,tag=SnowballMarker,distance=..1000] at @s run function exigence:hub/item_shop/item/item_web_ball/private/update_snowball
