## CONSTRAINTS
#   AS armorstand card

#====================================================================================================

$execute if score toggle.deck debug matches 1 if score debug.level debug matches 3.. run say (D3) Playing card $(card_name)

# Get costs
#   Default method (non spellslinging)
$execute unless entity @s[tag=Spellslinging] run function exigence:cards/get_cost {card_name:'$(card_name)'}
#   If SPELLSLING, get cost from lore rather than default as we can modify the cost that way
execute if entity @s[tag=Spellslinging] run function exigence:cards/get_cost_from_lore

# Play card
$function exigence:cards/$(card_name)/play

# Any time a card is played, recalc resources needed
function exigence:bossbar/resource/update_title
