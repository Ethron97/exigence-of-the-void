# Triage function from node/new
#   Sets offline-timeout duration based on room type

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Value of 0 means it will close room as soon as it detects no players.

# Default 15 seconds
scoreboard players set @s hub.room.max_timeout 300

# Room specific
#   Set Tutorial to very short, because who cares if you lose progress. You can skip forward.
scoreboard players set @s[scores={hub.room.room_type=1}] hub.room.max_timeout 100
#   Set Item Shop to short for same reason, people may be waiting.
scoreboard players set @s[scores={hub.room.room_type=9}] hub.room.max_timeout 100

#...