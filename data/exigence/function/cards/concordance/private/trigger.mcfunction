# Called when player rings bell

## CONSTRAINTS
#   AS player

#===========================================================================================================

# Call random effect based on Concordance level
#   Can only be 2 if the card got recycled
execute if score Concordance Modifiers matches 1.. run function exigence:cards/concordance/private/random_effect
execute if score Concordance Modifiers matches 2.. run function exigence:cards/concordance/private/random_effect
