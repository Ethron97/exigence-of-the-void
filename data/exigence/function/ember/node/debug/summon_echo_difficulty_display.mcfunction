# Summon debug display showing echo difficulty

## CONSTRAINTS
#   AS/AT echo node

#====================================================================================================

# Save node.property.echo.difficulty score to temp storage
execute store result storage exigence:temp echo_difficulty int 1 run scoreboard players get @s node.property.echo.difficulty

execute positioned ~ ~2.06 ~ run function exigence:ember/node/debug/summon_echo_difficulty_display_macro with storage exigence:temp