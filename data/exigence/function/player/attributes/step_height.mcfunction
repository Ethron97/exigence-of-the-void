# Updates step height modifier for QoL
# Called by player/tick/tick_alive

## CONSTRAINTS
#   AS player

#====================================================================================================

# Double step height (0.6 -> 1.2)
#   This wont stack because you can't add a modifier with the same name, so we're good
execute if function exigence:player/attributes/private/if_step_height run return run attribute @s minecraft:step_height modifier add exigence:step_height_qol 1 add_multiplied_base
#----------------------------------------------------------------------------------------------------
# Else reset
attribute @s minecraft:step_height modifier remove exigence:step_height_qol
