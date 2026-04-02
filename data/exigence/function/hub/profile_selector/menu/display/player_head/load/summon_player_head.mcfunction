# Summon selector for inviting players

## CONSTRAINTS
#   AS player to summon head of
#   AT location

## INPUT
#   profile_selector_id set in exigence:temp

#====================================================================================================

#say Summon player head

# Summon display
function exigence:hub/profile_selector/menu/display/player_head/load/load_player_head with storage exigence:temp
tag @n[type=item_display,tag=NewItemDisplay,distance=..1] add HidingHead

# Team for glow color
team join Special @n[type=item_display,tag=NewItemDisplay,distance=..1]

# Item data
scoreboard players operation #compare career.player_id = @s career.player_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run data modify storage exigence:temp profile set from entity @s equipment.head.components."minecraft:profile"
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:profile" set from storage exigence:temp profile

execute store result entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".head_player_id int 1 run scoreboard players get @s career.player_id
scoreboard players operation @n[type=item_display,tag=NewItemDisplay,distance=..1] hub.entity.player_id = @s career.player_id

# Remove local display tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..1] remove NewItemDisplay
