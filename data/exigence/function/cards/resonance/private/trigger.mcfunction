# Called when player rings bell

## CONSTRAINTS
#   AS player

#====================================================================================================

# Call random effect based on Resonance level
#   Can only be 2 if the card got recycled
execute if score mod.resonance game.modifiers matches 1.. run function exigence:cards/resonance/private/random_effect
execute if score mod.resonance game.modifiers matches 2.. run function exigence:cards/resonance/private/random_effect
