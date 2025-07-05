# Called by advancement when player eats a berry if ambrosia 1..

## CONSTRAINTS
#   AS player

#===========================================================================================================

function exigence:cards/ambrosia/private/random_effect

# Call random effect based on Ambrosia level
#   Can only be 2 if the card got recycled (which we disabled because its persisent)
#execute if score Ambrosia Modifiers matches 1.. run function exigence:cards/ambrosia/private/random_effect
#execute if score Ambrosia Modifiers matches 2.. run function exigence:cards/ambrosia/private/random_effect
