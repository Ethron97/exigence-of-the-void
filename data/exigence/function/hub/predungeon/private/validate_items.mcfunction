# Returns exigence:hub valid_items true/false

## CONSTRAINTS
#   AS Player

#=============================================================================================================

# These can be increased by other items
scoreboard players set FoodLimit ValidateItems 1
scoreboard players set BagLimit ValidateItems 1
scoreboard players set PotionLimit ValidateItems 2
scoreboard players set ArtifactLimit ValidateItems 1

# Get player's consumable item limit
function exigence:player/utility/calculate_item_limit
scoreboard players operation ConsumableLimit ValidateItems = @s ConsumableLimit


# Calculate modifiers
function exigence:game/modifiers/load_modifiers_a

execute store result score Potions ValidateItems run clear @s #exigence:potion 0
execute store result score Food ValidateItems run clear @s #exigence:food 0
execute store result score Bags ValidateItems run clear @s #exigence:bag 0
execute store result score Boots ValidateItems run clear @s #exigence:boots 0
execute store result score Leggings ValidateItems run clear @s #exigence:leggings 0
execute store result score Chestplates ValidateItems run clear @s #exigence:chestplates 0
execute store result score Helmets ValidateItems run clear @s #exigence:helmets 0
execute store result score Artifacts ValidateItems run clear @s #exigence:artifacts 0

execute store result score Consumables ValidateItems run clear @s #exigence:consumable 0



# Reset storage
data modify storage exigence:hub valid_items set value true

# If any amounts are greater than their maxes, fail
data modify storage exigence:hub validate_items.type set value "potions 🧪"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get Potions ValidateItems
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get PotionLimit ValidateItems
#execute if score Potions ValidateItems > PotionLimit ValidateItems run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "food 🥣"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get Food ValidateItems
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get FoodLimit ValidateItems
#execute if score Food ValidateItems > FoodLimit ValidateItems run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "bag items 💼"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get Bags ValidateItems
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get BagLimit ValidateItems
#execute if score Bags ValidateItems > BagLimit ValidateItems run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "consumables 💼🥣🧪"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get Consumables ValidateItems
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get ConsumableLimit ValidateItems
execute if score Consumables ValidateItems > ConsumableLimit ValidateItems run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "boots 🥾"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get Boots ValidateItems
data modify storage exigence:hub validate_items.max set value 1
execute if score Boots ValidateItems matches 2.. run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "leggings 👖"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get Leggings ValidateItems
execute if score Leggings ValidateItems matches 2.. run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "chestplates 🥋"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get Chestplates ValidateItems
execute if score Chestplates ValidateItems matches 2.. run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "helmets ⛑"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get Helmets ValidateItems
execute if score Helmets ValidateItems matches 2.. run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "artifacts ✨"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get Artifacts ValidateItems
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get ArtifactLimit ValidateItems
execute if score Artifacts ValidateItems > ArtifactLimit ValidateItems run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items


