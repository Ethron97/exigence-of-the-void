# Set model to blank version

## CONSTRAINTS
#   AS card display

## INPUT
#   STR card_name

#====================================================================================================

# Reset relevant analyzer scores
scoreboard players set cards.common deck.analysis 0
scoreboard players set cards.uncommon deck.analysis 0
scoreboard players set cards.rare deck.analysis 0
scoreboard players set cards.legendary deck.analysis 0

scoreboard players set cards.void deck.analysis 0
scoreboard players set cards.instant deck.analysis 0
scoreboard players set cards.persistent deck.analysis 0

# Call analyze function
scoreboard players set #copies deck.process_card 1
$function exigence:cards/$(card_name)/analyze/card_counts

# Set model based on remaining scores
execute if score cards.common deck.analysis matches 1 run function exigence:hub/ember_shop/menu/display/card/set_blank/common
execute if score cards.uncommon deck.analysis matches 1 run function exigence:hub/ember_shop/menu/display/card/set_blank/uncommon
execute if score cards.rare deck.analysis matches 1 run function exigence:hub/ember_shop/menu/display/card/set_blank/rare
execute if score cards.legendary deck.analysis matches 1 run function exigence:hub/ember_shop/menu/display/card/set_blank/legendary
