# Removes player head selector displays
#   JUST THE MENU ITEMS, NOT THE HEADS

## CONSTRAINTS
#   AT location

#=============================================================================================================

#say Remove player head selectors

# Remove display
kill @e[distance=..16,type=minecraft:text_display,tag=PageLabel]
kill @e[distance=..16,type=minecraft:item_display,tag=PageFlipperDisplay]
kill @e[distance=..16,type=minecraft:text_display,tag=PlayerHeadDetails]
kill @e[distance=..16,type=minecraft:block_display,tag=PlayerHeadSlot]
