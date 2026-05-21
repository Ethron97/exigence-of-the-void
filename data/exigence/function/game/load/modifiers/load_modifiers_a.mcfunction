# Call as player to load from
#   Called when player first enters predungeon, since they can affect item caps
#   Called again on dungeon start in case they removed it or something

#====================================================================================================

scoreboard players set mod.void_deck_modifier game.modifiers 0

#====================================================================================================
## ARTIFACTS
#====================================================================================================

# Ice Box
#execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'ice_box'}}}]}] run scoreboard players add food.limit hub.validate_items 1

# Potion pack
#execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'potion_pack'}}}]}] run scoreboard players add potion.limit hub.validate_items 1

# Helmet deck
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'helmet_deck'}}}]}] run scoreboard players add mod.void_deck_modifier game.modifiers 3

# Leggings artifact
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'leggings_artifact'}}}]}] run scoreboard players add artifact.limit hub.validate_items 1

# Charm of Peril
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'charm_of_peril'}}}]}] run function exigence:vault/artifact/artifacts/charm_of_peril/trigger
