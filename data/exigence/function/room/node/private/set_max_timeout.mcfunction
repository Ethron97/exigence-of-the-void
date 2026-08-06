# Triage function from node/new
#   Sets offline-timeout duration based on room type

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Reset current value
scoreboard players set @s hub.room.current_timeout 0

#====================================================================================================

# Sets the max timeout in ticks
# Value of 0 means it will close room as soon as it detects no players.

# Default 5 seconds
scoreboard players set @s hub.room.max_timeout 100

# Room specific
#   Set TUTORIAL to very short, because who cares if you lose progress. You can skip forward.
scoreboard players set @s[scores={hub.room.room_type=1}] hub.room.max_timeout 100
#   PREDUNGEON
scoreboard players set @s[scores={hub.room.room_type=2}] hub.room.max_timeout 120000
#   Set ITEM SHOP to short for same reason, people may be waiting.
scoreboard players set @s[scores={hub.room.room_type=9}] hub.room.max_timeout 100
#   Set GAME to be instant, as when a player logs out they are considered dead anyways
scoreboard players set @s[scores={hub.room.room_type=3}] hub.room.max_timeout 0
#   Set LIMBO to 24h
#   1728000
scoreboard players set @s[scores={hub.room.room_type=4}] hub.room.max_timeout 1728000
#   Set Ember Shop 24 hours, because the loaded-timer will end if someone is waiting.
scoreboard players set @s[scores={hub.room.room_type=5}] hub.room.max_timeout 1728000
#   6000

#...