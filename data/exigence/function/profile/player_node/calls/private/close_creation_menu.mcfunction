# Called from player_logged_out

## CONSTRAINTS
#   AS player node

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Close creation menu

scoreboard players operation #compare hub.entity.player_id = @s profile.node.player_id

execute in exigence:hub as @e[x=-98,y=0,z=798,dx=244,dy=256,dz=16,type=minecraft:item_display,tag=CreationProcess] if score @s hub.entity.player_id = #compare hub.entity.player_id \
run function exigence:hub/profile_selector/menu/display/profile/create_new_cancel with entity @s item.components."minecraft:custom_data"