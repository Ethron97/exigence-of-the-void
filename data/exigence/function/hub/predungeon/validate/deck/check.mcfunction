# Verify no errors in deck processing (most commonly due to too many copies of cards)

## CONSTRAINTS
#   AS/AT predungeon menu node

## OUTPUT
#   #predungeon_validate_deck Temp

#====================================================================================================

#say (D3) validate/deck/check

# Default to VALID
scoreboard players set #predungeon_validate_deck Temp 1

# Run refresh from the nearest Deck Analyzer refresh button
scoreboard players operation #relay_to_room_id Temp = @s hub.entity.room_id
execute as @n[type=item_display,tag=PredungeonAnalyzerDisplay,tag=RefreshButton,distance=..16] run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/refresh

# Errors present?
execute store success score #predungeon_validate_deck Temp unless score errors deck.analysis matches 1..

# Warnings and errors already automatically get sent to all players in the room

# Check for blacklisted co-op cards

