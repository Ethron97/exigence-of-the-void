# Finds the first slot name that is empty
#   Iterative

## CONSTRAINTS
#   AS player
#   IF entity exists with tag "ForceGive"

## INPUT
#   STR type - 'inventory' or 'hotbar'
#   INT index - 0-8 for 'hotbar', 0-26 for 'inventory'

#=========================================================================================================

# DEBUG
#$say Give item loop $(type).$(index)

# Sanity
execute unless entity @e[type=minecraft:armor_stand,tag=intermediary] run summon minecraft:armor_stand -382.47 37.00 -115.34 {Tags:[intermediary],ShowArms:1b}

# Return if index is too high
$execute if score 27 number matches ..$(index) run return 1

# Reset score
scoreboard players set #replace Temp 0

# Check if current slot is empty
$execute unless items entity @s $(type).$(index) * run scoreboard players set #replace Temp 1

# If replace, replace and return
$execute if score #replace Temp matches 1 run item replace entity @s $(type).$(index) from entity @e[type=item,tag=ForceGive,limit=1] contents
execute if score #replace Temp matches 1 run return 1

## STACK CHECK
#scoreboard players set #stackcheck Temp 0
#$execute unless items entity @s $(type).$(index) carrot_on_a_stick run scoreboard players set #stackcheck Temp 1
# If it wasn't empty, check if same stackable card (mostly for returning cards)
#scoreboard players set #increase Temp 0
#$execute if items entity @s $(type).$(index) paper[custom_data={item_name:'$(card_name)'}] run scoreboard players set #increase Temp 1
#$execute item replace entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] weapon.mainhand from entity @s $(type).$(index)
#$execute if score #stackcheck Temp matches 1 if data entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] {HandItems:[{components:{"minecraft:custom_data":{card_name:'$(card_name)'}}}]} run scoreboard players set #increase Temp 1
#$execute if score #stackcheck Temp matches 1 if score #increase Temp matches 1 run item modify entity @s $(type).$(index) exigence:increment
#execute if score #stackcheck Temp matches 1 if score #increase Temp matches 1 run return 1

# Copy input to storage
$data modify storage exigence:give type set value $(type)
$data modify storage exigence:give index set value $(index)

# Increase index by 1
$scoreboard players set #temp Temp $(index)
scoreboard players add #temp Temp 1

# If index = 8 and type is 'hotbar', set index to 0 and type to 'inventory'
execute if data storage exigence:give {type:'hotbar',index:8} run scoreboard players set #temp Temp 0
execute if data storage exigence:give {type:'hotbar',index:8} run data modify storage exigence:give type set value 'inventory'

# Copy index back to storage
execute store result storage exigence:give index int 1 run scoreboard players get #temp Temp

# Iterate
function exigence:player/give_from_item/give with storage exigence:give
