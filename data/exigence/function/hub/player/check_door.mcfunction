# Called from door_tick to check if player is in a door

## CONSTRAINTS
#   AS player (we can't do at @s as well, because we need the player positioned updated after he leaves/enters to avoid loops)
#       Predicate = hub
#       Gamemode =! spectator

#====================================================================================================

# PROLOGUE

# PROFILE SELECTOR (cyan stained glass)
execute as @s[tag=ProfileSelecting] at @s if block ~ ~ ~ minecraft:cyan_stained_glass_pane run function exigence:hub/profile_selector/access/try_leave
execute as @s[tag=!ProfileSelecting] at @s if block ~ ~ ~ minecraft:cyan_stained_glass_pane run function exigence:hub/profile_selector/access/try_enter_door

# TUTORIAL (green stained glass)
execute as @s[tag=!Tutorial] at @s if block ~ ~ ~ minecraft:lime_stained_glass_pane run function exigence:tutorial/access/try_enter_tutorial

# If yellow stained glass (locker room):
execute as @s[tag=LockerRoom] at @s if block ~ ~ ~ minecraft:yellow_stained_glass_pane at @n[type=minecraft:marker,tag=LockerRoomNode,distance=..5] run function exigence:hub/locker_room/access/leave
execute as @s[tag=!LockerRoom] at @s if block ~ ~ ~ minecraft:yellow_stained_glass_pane at @n[type=minecraft:marker,tag=LockerRoomNode,distance=..5] run function exigence:hub/locker_room/access/try_enter_door

# ITEM SHOP (orange stained glass)
execute as @s[tag=ItemShop] at @s if block ~ ~ ~ minecraft:orange_stained_glass_pane run function exigence:hub/item_shop/access/leave
execute as @s[tag=!ItemShop] at @s if block ~ ~ ~ minecraft:orange_stained_glass_pane run function exigence:hub/item_shop/access/try_enter_door

# Predungeon
execute as @s[tag=!Predungeon] at @s if block ~ ~ ~ minecraft:purple_stained_glass_pane run function exigence:hub/predungeon/access/try_enter_door
execute as @s[tag=Predungeon] at @s if block ~ ~ ~ minecraft:purple_stained_glass_pane run function exigence:hub/predungeon/access/leave

# Ember shop (viewing)
#execute as @s[tag=EmberViewing] at @s if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run function exigence:hub/ember_shop/door_viewing/try_leave
#execute as @s[tag=!ItemShop,tag=!Lockerroom,tag=!Predungeon,tag=!EmberViewing,tag=!EmberShopping] at @s if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run function exigence:hub/ember_shop/door_viewing/try_enter

# Ember shop (shopping)
#execute as @s[tag=EmberShopping] at @s if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run function exigence:hub/ember_shop/door_shopping/try_leave
