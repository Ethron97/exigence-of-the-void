# For starting hub trials

## CONSTRAINTS
#   AS player

#====================================================================================================

# Return if active
execute if score hub.flow.crucible trial.status matches 1 run return run tellraw @s [{text:"✖ Trial in use",color:"red"}]
#----------------------------------------------------------------------------------------------------

# Set scores
scoreboard players set @s dead 0
scoreboard players set @s game.player.vault_code 6

# Gamemode
gamemode adventure @s

# Tags
tag @s add Crucible
tag @s add Hub

# Call begin function
function exigence:door/vault/flow/trial/trial_hub/begin
