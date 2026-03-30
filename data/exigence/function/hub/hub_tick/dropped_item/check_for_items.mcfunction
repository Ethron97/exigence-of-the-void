# Check for nearby itmes

## CONSTRAINTS
#   AS player

#====================================================================================================

# If in predungeon and dungeon state is 1..
execute if entity @s[tag=Predungeon] if score #predungeon_state Temp matches 1.. run return run function exigence:hub/hub_tick/dropped_item/check_for_items_predungeon

# Check for item on the ground
execute at @s as @e[distance=..4,type=item,tag=!DropChecked] run function exigence:hub/hub_tick/dropped_item/dropped_item

# Every second, check for CoopItems on the ground
execute if score seconds.cooldown tick_counter matches 9 at @s as @e[distance=..4,type=minecraft:item,tag=DropChecked,tag=CoopItem] run function exigence:hub/hub_tick/dropped_item/coop_item
