# Do macro for given effect to give effect

## CONSTRAINTS
#   As player

#========================================================================================================

# Store duration/effect
$execute store result storage exigence:player_effects ticks int 1 run scoreboard players get @s cr_effect_$(effect)
$data modify storage exigence:player_effects effect set value '$(effect)'
$data modify storage exigence:player_effects display set value '$(display)'

# Call macro with duration and effect
function exigence:cards/truesight/private/give_effect_macro with storage exigence:player_effects
