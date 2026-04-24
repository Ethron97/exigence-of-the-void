# Warden effect tick (called every second)

## CONSTRAINTS
#   AS/AT Warden

#====================================================================================================

# Store anger toward first entity in list (which should always be the player)
execute store result score @s game.warden.anger run data get entity @s anger.suspects[0].anger 1

# Update warden active level
function exigence:enemy/warden/private/update_active_level

# Update anger
function exigence:enemy/warden/anger_update
