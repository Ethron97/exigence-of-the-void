# Reset node tags
execute as @e[type=minecraft:armor_stand,tag=DoorNode,tag=Opened] run tag @s remove Opened

# Kill any vault key hovers
kill @e[type=minecraft:item_display,tag=DoorHandleKey]

# Kill old door handls
kill @e[type=minecraft:item_display,tag=Door]
kill @e[type=minecraft:interaction,tag=DoorHandle]

# Reset score
#scoreboard players set VaultKeyHover TickCounter 0

# Reset tags
tag @a[tag=Trial] remove Trial
tag @a[tag=Crucible] remove Crucible

## Close doors
# Level 1
function exigence:door/level/door_1/close
# Level 2
function exigence:door/level/door_2/close
# Level 3
function exigence:door/level/door_3/close


## Recreate door handles
# Level 1
execute as @e[type=armor_stand,tag=DoorNode,tag=Door1] at @s positioned ~ ~2.5 ~ run function exigence:door/level/door_1/setup_handle
# Level 2
execute as @e[type=armor_stand,tag=DoorNode,tag=Door2] at @s positioned ~ ~2.5 ~ run function exigence:door/level/door_2/setup_handle
# Level 3
execute as @e[type=armor_stand,tag=DoorNode,tag=Door3] at @s positioned ~ ~2.5 ~ run function exigence:door/level/door_3/setup_handle