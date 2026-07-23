# Breakdown by rarity: Common

## CONSTRAINTS
#   AS card display

#====================================================================================================

execute if score cards.void deck.analysis matches 0 if score cards.instant deck.analysis matches 0 if score cards.persistent deck.analysis matches 0 \
run return run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["card_common"]
#----------------------------------------------------------------------------------------------------

execute if score cards.void deck.analysis matches 0 if score cards.instant deck.analysis matches 1 if score cards.persistent deck.analysis matches 0 \
run return run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["card_common_instant"]
#----------------------------------------------------------------------------------------------------

execute if score cards.void deck.analysis matches 1 if score cards.instant deck.analysis matches 1 if score cards.persistent deck.analysis matches 0 \
run return run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["card_common_instant_void"]
#----------------------------------------------------------------------------------------------------

execute if score cards.persistent deck.analysis matches 1 \
run return run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["card_common_persistent"]
#----------------------------------------------------------------------------------------------------

execute if score cards.void deck.analysis matches 1 \
run return run data modify entity @s item.components."minecraft:custom_model_data".strings set value ["card_common_void"]