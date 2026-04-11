# Removes player head selector displays

## CONSTRAINTS
#   AT location

#====================================================================================================

#say (D3) Remove player head selectors

# Remove display
kill @e[type=minecraft:text_display,tag=PageLabel,distance=..16]
kill @e[type=minecraft:item_display,tag=PageFlipperDisplay,distance=..16]
kill @e[type=minecraft:item_display,tag=PlayerHeadDisplay,tag=!KeepDisplay,distance=..16]
kill @e[type=minecraft:text_display,tag=PlayerHeadDetails,distance=..16]
kill @e[type=minecraft:block_display,tag=PlayerHeadSlot,distance=..16]
