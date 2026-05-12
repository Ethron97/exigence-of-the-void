# For starting hub trials

## CONSTRAINTS
#   AS player

#====================================================================================================

# Sounds
function exigence:door/vault/_trial/_begin

# Set scores
scoreboard players set @s dead 0
scoreboard players set @s game.player.vault_code 1

# Gamemode
gamemode adventure @s

# Tags
tag @s add Trial
tag @s add Hub

# Call begin function
function exigence:door/vault/bolt/trial/trial_hub/begin
