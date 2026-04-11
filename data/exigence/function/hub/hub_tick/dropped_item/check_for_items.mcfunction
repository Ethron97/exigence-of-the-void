# Check for nearby itmes

## CONSTRAINTS
#   AS player

#====================================================================================================

# If in predungeon and dungeon state is 1..
execute if entity @s[tag=Predungeon] if score #predungeon_state Temp matches 1.. run return run function exigence:hub/hub_tick/dropped_item/check_for_items_predungeon

# Check for item on the ground
execute at @s as @e[type=item,tag=!DropChecked,distance=..4] run function exigence:hub/hub_tick/dropped_item/just_dropped_item

# Every second, update items on the ground
#execute if score seconds.cooldown tick_counter matches 9 at @s as @e[type=minecraft:item,tag=DropChecked,tag=!DroppedByAdmin,distance=..4] run function exigence:hub/hub_tick/dropped_item/update_item
# Every tick for now. If we need to, change to every second and move the update_item function to call every time the player tps in the hub
execute at @s as @e[type=minecraft:item,tag=DropChecked,tag=!DroppedByAdmin,distance=..4] run function exigence:hub/hub_tick/dropped_item/update_item
