# For starting hub trials

## CONSTRAINTS
#   AS player

#====================================================================================================

# Return if active
execute if score hub.silence.trial trial.status matches 1 run return run tellraw @s [{text:"✖ Trial in use",color:"red"}]
#----------------------------------------------------------------------------------------------------

# Set scores
scoreboard players set @s dead 0
scoreboard players set @s game.player.vault_code 3

# Gamemode
gamemode adventure @s

# Tags
tag @s add Trial
tag @s add Hub

# Call begin function
function exigence:door/vault/silence/trial/trial_hub/begin
