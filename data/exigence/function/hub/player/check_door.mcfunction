# Called from door_tick to check if player is in a door

## CONSTRAINTS
#   AS player (we can't do at @s as well, because we need the player positioned updated after he leaves/enters to avoid loops)
#       Predicate = hub
#       Gamemode =! spectator

#==========================================================================================================

# PROLOGUE

# PROFILE SELECTOR (cyan stained glass)
execute as @s[tag=ProfileSelecting] at @s if block ~ ~ ~ minecraft:cyan_stained_glass_pane run function exigence:hub/profile_selector/access/try_leave
execute as @s[tag=!ProfileSelecting] at @s if block ~ ~ ~ minecraft:cyan_stained_glass_pane run function exigence:hub/profile_selector/access/try_enter

# ITEM SHOP (orange stained glass)
#execute as @s[tag=ItemShopping] at @s if block ~ ~ ~ minecraft:orange_stained_glass_pane run function exigence:hub/item_shop/door/try_leave
#execute as @s[tag=!ItemShopping,tag=!Lockerroom,tag=!Predungeon,tag=!EmberViewing] at @s if block ~ ~ ~ minecraft:orange_stained_glass_pane run function exigence:hub/item_shop/door/try_enter

# If magenta stained glass (locker room):
#execute as @s[tag=Lockerroom] at @s if block ~ ~ ~ minecraft:magenta_stained_glass_pane run function exigence:hub/locker_room/leave_room
#execute as @s[tag=!Lockerroom,tag=!ItemShopping,tag=!EmberViewing] at @s if block ~ ~ ~ minecraft:magenta_stained_glass_pane run function exigence:hub/locker_room/try_enter_room

# Predungeon
#execute as @s[tag=Lockerroom,tag=!Predungeon,tag=!Coop] at @s if block ~ ~ ~ minecraft:purple_stained_glass_pane run function exigence:hub/predungeon/try_enter_room
#execute as @s[tag=Lockerroom,tag=!Predungeon,tag=Coop] at @s if block ~ ~ ~ minecraft:purple_stained_glass_pane run function exigence:hub/predungeon/coop_try_enter_room

# If in predungeon, and there is no coop with you and no one in locker room, normal leave
#execute as @s[tag=!Lockerroom,tag=Predungeon] at @s unless entity @a[tag=Coop] unless entity @a[tag=Lockerroom] if block ~ ~ ~ minecraft:purple_stained_glass_pane run function exigence:hub/predungeon/leave_room

# If in predungeon, and there is a coop with you, tp everyone back to hub
#execute as @s[tag=!Lockerroom,tag=Predungeon] at @s if entity @a[tag=Coop,tag=!Lockerroom] if block ~ ~ ~ minecraft:purple_stained_glass_pane run function exigence:hub/predungeon/group_leave

# If Coop in predungeon, and no one is in lockerroom, return to lockerroom
#execute as @s[tag=!Lockerroom,tag=Coop] at @s unless entity @a[tag=Lockerroom] if block ~ ~ ~ minecraft:purple_stained_glass_pane run function exigence:hub/predungeon/coop_leave


# Ember shop (viewing)
#execute as @s[tag=EmberViewing] at @s if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run function exigence:hub/ember_shop/door_viewing/try_leave
#execute as @s[tag=!ItemShopping,tag=!Lockerroom,tag=!Predungeon,tag=!EmberViewing,tag=!EmberShopping] at @s if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run function exigence:hub/ember_shop/door_viewing/try_enter

# Ember shop (shopping)
#execute as @s[tag=EmberShopping] at @s if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run function exigence:hub/ember_shop/door_shopping/try_leave
