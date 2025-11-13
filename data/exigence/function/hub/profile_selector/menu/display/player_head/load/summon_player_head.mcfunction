# Summon selector for inviting players

## CONSTRAINTS
#   AS player to summon head of
#   AT location

## INPUT
#   profile_selector_id set in exigence:temp

#=============================================================================================================

#say Summon player head

# Summon display
function exigence:hub/profile_selector/menu/display/player_head/load/load_player_head with storage exigence:temp
tag @n[distance=..1,type=item_display,tag=NewItemDisplay] add HidingHead

# Team for glow color
team join Special @n[distance=..1,type=item_display,tag=NewItemDisplay]

# Item data
scoreboard players operation #compare career.player_id = @s career.player_id
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..32,type=armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run data modify storage exigence:temp profile set from entity @s equipment.head.components."minecraft:profile"
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:profile" set from storage exigence:temp profile

execute store result entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".head_player_id int 1 run scoreboard players get @s career.player_id
scoreboard players operation @n[distance=..1,type=item_display,tag=NewItemDisplay] hub.entity.player_id = @s career.player_id

# Remove local display tag
tag @n[distance=..1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
