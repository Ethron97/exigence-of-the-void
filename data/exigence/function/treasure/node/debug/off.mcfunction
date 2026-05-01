# Hide debug

## CONSTRAINTS
#   AS/AT treasure node

#====================================================================================================

# Kill block display
kill @n[type=minecraft:block_display,tag=TreasureDebugDisplay,distance=..3]

# Remove bb
execute if entity @s[tag=TreasureNodeBox] run function exigence:treasure/node/debug/remove_bb

# Kill text displays
kill @e[type=minecraft:text_display,tag=KeyBlacklistDisplay,distance=..3]
kill @e[type=minecraft:text_display,tag=FlameBlacklistDisplay,distance=..3]
kill @e[type=minecraft:text_display,tag=TreasureDropTriesDisplay,distance=..3]
