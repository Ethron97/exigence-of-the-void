# Called by hub_tick

## CONSTRAINTS
#   AS/AT locker room node

#====================================================================================================

#say locker menu tick

# Swap Hover/OldHover tags (only for this locker room)
scoreboard players operation #compare hub.locker_room_id = @s hub.locker_room_id
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=Hover,distance=..8] \
if score @s hub.entity.locker_room_id = #compare hub.locker_room_id run function exigence:menu/menu_tick_tag_swap

# Handle player functions
execute as @a[tag=LockerRoom,distance=..8] if score @s hub.player.locker_room_id = #compare hub.locker_room_id at @s run function exigence:hub/locker_room/menu/locker_player_tick

# Hover logic
execute as @e[type=minecraft:item_display,tag=MenuDisplay,distance=..8] \
if score @s hub.entity.locker_room_id = #compare hub.locker_room_id run function exigence:hub/locker_room/menu/display_hover_logic
