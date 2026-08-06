# Triage function from node/new
#   Sets room-loaded timer max in ticks

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Reset current values
scoreboard players set @s hub.room.current_timer 0
scoreboard players set @s hub.room.knock 0

#====================================================================================================

# Sets the max room load time in ticks
#   -1 means there is no time limit for the room being loaded

# By default, kick players out after a minute for now
scoreboard players set @s hub.room.max_timer 1300

# Room specific
#   TUTORIAL
#scoreboard players set @s[scores={hub.room.room_type=1}] hub.room.max_timer 24000

#   PREDUNGEON (5 minutes)
scoreboard players set @s[scores={hub.room.room_type=2}] hub.room.max_timer 6000

#   Set GAME to indefinite (game will kill them eventually)
scoreboard players set @s[scores={hub.room.room_type=3}] hub.room.max_timer -1

#   Set LIMBO to indefinite
scoreboard players set @s[scores={hub.room.room_type=4}] hub.room.max_timer -1

#   EMBER SHOP
#scoreboard players set @s[scores={hub.room.room_type=5}] hub.room.max_timer 6000

# ITEM SHOP (default)
#scoreboard players set @s[scores={hub.room.room_type=9}] hub.room.max_timer 6000

# LOCKER ROOM = default

# Profile selector = default

#...

#====================================================================================================

# Set expire threshold to max timer - 1 minute
scoreboard players operation @s hub.room.expire_threshold = @s hub.room.max_timer
scoreboard players remove @s hub.room.expire_threshold 1200
