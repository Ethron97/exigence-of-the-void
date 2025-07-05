# Call as player to load from
#   Called when player first enters predungeon, since they can affect item caps
#   Called again on dungeon start in case they removed it or something

scoreboard players set VoidDeckModifier Modifiers 0

## ====================== ARTIFACTS ======================
# Ice Box
#execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'ice_box'}}}]}] run scoreboard players add FoodLimit ValidateItems 1


# Satchel
# MOVED TO player/utilities/calculate_item_limit


# Potion pack
#execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'potion_pack'}}}]}] run scoreboard players add PotionLimit ValidateItems 1

# Helmet deck
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'helmet_deck'}}}]}] run scoreboard players add VoidDeckModifier Modifiers 3

# Leggings artifact
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'leggings_artifact'}}}]}] run scoreboard players add ArtifactLimit ValidateItems 1




# Pants and Permanent
# MOVED TO player/utilities/calculate_item_limit
