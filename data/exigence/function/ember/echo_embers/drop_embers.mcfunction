# Now used just for the embers that spawn around the echo

# Iterative function to drop all embers needed

## CONSTRAINTS
#   AS/AT armorstand with node.ember.embers_to_drop=1..

#==============================================================================================================

# Copy object level for reference
scoreboard players operation #compare ObjectLevel = @s ObjectLevel

execute if score @s node.ember.embers_to_drop matches 1..19 run function exigence:ember/echo_embers/summon_ember
execute if score @s node.ember.embers_to_drop matches 1..19 run scoreboard players remove @s node.ember.embers_to_drop 1

execute if score @s node.ember.embers_to_drop matches 20.. run function exigence:ember/echo_embers/summon_ember_big
execute if score @s node.ember.embers_to_drop matches 20.. run scoreboard players remove @s node.ember.embers_to_drop 10

# Iterate
execute if score @s node.ember.embers_to_drop matches 1.. run function exigence:ember/echo_embers/drop_embers
