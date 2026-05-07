# Iterate key/door animation

## CONSTRAINTS
#   AS vault handle (item display)

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 4.. run say (D4) Opening

# Call interface function
#   Handles sounds / key sequence
function exigence:door/vault/_common/opening_vault

# If still opening, iterate
execute if score @s game.door.inserting_key matches 1.. run schedule function exigence:door/vault/vex/opening 1t