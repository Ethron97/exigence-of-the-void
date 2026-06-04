# Increase player heighten by 1

## CONSTRAINTS
#   AS player

#====================================================================================================

# Increase heighten level by 1
scoreboard players add @s game.player.heighten 1

# Update player effect
function exigence:player/effects/heighten/update_effect

# Playsound
execute at @s run playsound minecraft:entity.illusioner.prepare_blindness hostile @s ~ ~1000 ~ 1000 1
