# Removes pending invite related displays

## CONSTRAINTS
#   AT location

#=============================================================================================================

#say Remove invite displays

# Remove display
kill @e[distance=..16,type=minecraft:text_display,tag=PendingTitle]
kill @e[distance=..16,type=minecraft:text_display,tag=PendingList]
