# Called by hub_tick

## CONSTRAINTS
#   AS/AT locker room node

#====================================================================================================

#say locker menu tick

# Swap Hover/OldHover tags (only for this locker room)
scoreboard players operation #compare hub.locker_room_id = @s hub.locker_room_id
execute as @e[distance=..8,type=minecraft:item_display,tag=MenuDisplay,tag=Hover] \
if score @s hub.entity.locker_room_id = #compare hub.locker_room_id run function exigence:menu/menu_tick_tag_swap

# Handle player functions
execute as @a[distance=..8,tag=LockerRoom] if score @s hub.player.locker_room_id = #compare hub.locker_room_id run function exigence:hub/locker_room/menu/locker_player_tick

# Hover logic
execute as @e[distance=..8,type=minecraft:item_display,tag=MenuDisplay] \
if score @s hub.entity.locker_room_id = #compare hub.locker_room_id run function exigence:hub/locker_room/menu/display_hover_logic
