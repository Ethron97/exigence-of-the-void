# Returns exigence:hub valid_items true/false

## CONSTRAINTS
#   AS Player

#=============================================================================================================

# These can be increased by other items
scoreboard players set food.limit hub.validate_items 1
scoreboard players set bag.limit hub.validate_items 1
scoreboard players set potion.limit hub.validate_items 2
scoreboard players set artifact.limit hub.validate_items 1

# Get player's consumable item limit
function exigence:player/utility/calculate_item_limit
scoreboard players operation consumable.limit hub.validate_items = @s hub.player.consumable_limit


# Calculate modifiers
function exigence:game/modifiers/load_modifiers_a

execute store result score potion.items hub.validate_items run clear @s #exigence:potion 0
execute store result score food.items hub.validate_items run clear @s #exigence:food 0
execute store result score bag.items hub.validate_items run clear @s #exigence:bag 0
execute store result score boot.items hub.validate_items run clear @s #exigence:boots 0
execute store result score legging.items hub.validate_items run clear @s #exigence:leggings 0
execute store result score chestplate.items hub.validate_items run clear @s #exigence:chestplates 0
execute store result score helmet.items hub.validate_items run clear @s #exigence:helmets 0
execute store result score artifact.items hub.validate_items run clear @s #exigence:artifacts 0

execute store result score consumable.items hub.validate_items run clear @s #exigence:consumable 0



# Reset storage
data modify storage exigence:hub valid_items set value true

# If any amounts are greater than their maxes, fail
data modify storage exigence:hub validate_items.type set value "potions 🧪"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get potion.items hub.validate_items
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get potion.limit hub.validate_items
#execute if score potion.items hub.validate_items > potion.limit hub.validate_items run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "food 🥣"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get food.items hub.validate_items
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get food.limit hub.validate_items
#execute if score food.items hub.validate_items > food.limit hub.validate_items run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "bag items 💼"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get bag.items hub.validate_items
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get bag.limit hub.validate_items
#execute if score bag.items hub.validate_items > bag.limit hub.validate_items run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "consumables 💼🥣🧪"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get consumable.items hub.validate_items
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get consumable.limit hub.validate_items
execute if score consumable.items hub.validate_items > consumable.limit hub.validate_items run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "boots 🥾"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get boot.items hub.validate_items
data modify storage exigence:hub validate_items.max set value 1
execute if score boot.items hub.validate_items matches 2.. run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "leggings 👖"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get legging.items hub.validate_items
execute if score legging.items hub.validate_items matches 2.. run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "chestplates 🥋"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get chestplate.items hub.validate_items
execute if score chestplate.items hub.validate_items matches 2.. run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "helmets ⛑"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get helmet.items hub.validate_items
execute if score helmet.items hub.validate_items matches 2.. run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items

data modify storage exigence:hub validate_items.type set value "artifacts ✨"
execute store result storage exigence:hub validate_items.current int 1 run scoreboard players get artifact.items hub.validate_items
execute store result storage exigence:hub validate_items.max int 1 run scoreboard players get artifact.limit hub.validate_items
execute if score artifact.items hub.validate_items > artifact.limit hub.validate_items run function exigence:hub/predungeon/private/too_many_items with storage exigence:hub validate_items


