# Called from player_logged_out

## CONSTRAINTS
#   AS player node

#====================================================================================================

say Close creation menu

scoreboard players operation #compare hub.entity.player_id = @s profile.node.player_id

execute in exigence:hub positioned 999 128 6 as @e[type=item_display,tag=CreationProcess,distance=..200] if score @s hub.entity.player_id = #compare hub.entity.player_id \
run function exigence:hub/profile_selector/menu/display/profile/create_new_cancel with entity @s item.components."minecraft:custom_data"