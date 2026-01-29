# Triage function from node/new
#   Sets offline-timeout duration based on room type

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Value of 0 means it will close room as soon as it detects no players.

# Default 30 seconds
scoreboard players set @s hub.room.max_timeout 300

# Room specific
scoreboard players set @s[scores={hub.room.room_type=1}] hub.room.max_timeout 30

#...