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
tag @e[distance=..8,type=item_display,tag=NewItemDisplay] add ItemShopAnalyzerDisplay
tag @e[distance=..6,type=item_display,tag=NewItemDisplay] remove NewItemDisplay

# Edit text displays
tag @e[distance=..8,type=text_display,tag=NewTextDisplay] add ItemShopAnalyzerDisplay
tag @e[distance=..8,type=text_display,tag=NewTextDisplay] remove NewTextDisplay

# Edit block displays
tag @e[distance=..8,type=block_display,tag=NewBlockDisplay] add ItemShopAnalyzerDisplay
tag @e[distance=..8,type=block_display,tag=NewBlockDisplay] remove NewBlockDisplay

# Call analyze
execute at @s as @n[distance=..3,type=item_display,tag=RefreshButton] run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/refresh
