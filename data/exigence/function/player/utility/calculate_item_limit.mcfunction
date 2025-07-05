# Calculate the consumable item limit for a player by looking at achievements, purchases, and armor

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Reset score
scoreboard players set @s ConsumableLimit 0

# FROM PROGRESS
execute if entity @s[advancements={exigence:story/win_difficulty_1=true}] run scoreboard players add @s ConsumableLimit 1
execute if entity @s[advancements={exigence:story/win_difficulty_2=true}] run scoreboard players add @s ConsumableLimit 1
execute if entity @s[advancements={exigence:story/win_difficulty_3=true}] run scoreboard players add @s ConsumableLimit 1
execute if entity @s[advancements={exigence:story/win_difficulty_4=true}] run scoreboard players add @s ConsumableLimit 1

# FROM ITEMS
## ====================== ARTFIACTS ======================
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'satchel'}}}]}] run scoreboard players add @s ConsumableLimit 1

## ====================== LEGGINGS ======================
# Extra Pockets (separate, old)
#execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_leggings",components:{"minecraft:custom_data":{item_name:'pants_pocket_a'}}}]}] run scoreboard players add FoodLimit ValidateItems 1
#execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_leggings",components:{"minecraft:custom_data":{item_name:'pants_pocket_b'}}}]}] run scoreboard players add BagLimit ValidateItems 1
#execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_leggings",components:{"minecraft:custom_data":{item_name:'pants_pocket_c'}}}]}] run scoreboard players add PotionLimit ValidateItems 1

# Extra Pockets (combined)
execute if predicate exigence:equipment/pants/utility_a run scoreboard players add @s ConsumableLimit 1
execute if predicate exigence:equipment/pants/utility_b run scoreboard players add @s ConsumableLimit 2
execute if predicate exigence:equipment/pants/utility_c run scoreboard players add @s ConsumableLimit 4

## ====================== PERMANENT UPGRADES ======================
# Separate (old)
#execute if entity @s[advancements={exigence:unlockables/one_time/one_time_food_a=true}] run scoreboard players add FoodLimit ValidateItems 1
#execute if entity @s[advancements={exigence:unlockables/one_time/one_time_bag_a=true}] run scoreboard players add BagLimit ValidateItems 1
#execute if entity @s[advancements={exigence:unlockables/one_time/one_time_potion_a=true}] run scoreboard players add PotionLimit ValidateItems 1

# Combined
execute if entity @s[advancements={exigence:unlockables/one_time/one_time_food_a=true}] run scoreboard players add @s ConsumableLimit 1
execute if entity @s[advancements={exigence:unlockables/one_time/one_time_bag_a=true}] run scoreboard players add @s ConsumableLimit 1
execute if entity @s[advancements={exigence:unlockables/one_time/one_time_potion_a=true}] run scoreboard players add @s ConsumableLimit 1
