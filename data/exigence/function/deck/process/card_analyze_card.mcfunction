# Call as card to call analyze

## CONSTRAINTS
#   AS card armorstand

#====================================================================================================

execute if score toggle.deck debug matches 1 if score debug.level debug matches 4.. run say (D4) Card analyze card

$function exigence:cards/$(card_name)/analyze
