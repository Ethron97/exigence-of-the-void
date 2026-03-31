# Load deck analyzer for this room

## CONSTRAINTS
#   AS/AT deck analyzer

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

say Load deck analyzer from ITEM SHOP room

# Call interface
#   INPUT: #profile_id Temp, #coop_profile_id Temp
function exigence:hub/deck_analyzer/load_deck_anaylzer

# Item Displays
tag @e[type=item_display,tag=NewItemDisplay,distance=..8] add ItemShopAnalyzerDisplay
tag @e[type=item_display,tag=NewItemDisplay,distance=..6] remove NewItemDisplay

# Edit text displays
tag @e[type=text_display,tag=NewTextDisplay,distance=..8] add ItemShopAnalyzerDisplay
tag @e[type=text_display,tag=NewTextDisplay,distance=..8] remove NewTextDisplay

# Edit block displays
tag @e[type=block_display,tag=NewBlockDisplay,distance=..8] add ItemShopAnalyzerDisplay
tag @e[type=block_display,tag=NewBlockDisplay,distance=..8] remove NewBlockDisplay

# Call analyze
execute at @s as @n[type=item_display,tag=RefreshButton,distance=..3] run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/refresh
