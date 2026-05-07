# Removes pending invite related displays

## CONSTRAINTS
#   AT location

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) Remove invite displays

# Remove display
kill @e[type=minecraft:text_display,tag=PendingTitle,distance=..16]
kill @e[type=minecraft:text_display,tag=PendingList,distance=..16]
