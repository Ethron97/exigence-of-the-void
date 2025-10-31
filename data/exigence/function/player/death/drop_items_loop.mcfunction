# Drop all droppable items on death

## CONSTRAINTS
#   AS player
#   AT DeathMarker

## INPUT
#   STR type - 'inventory' or 'hotbar'
#   INT index - 0-8 for 'hotbar', 0-26 for 'inventory'

#=========================================================================================================

# DEBUG
#$say Drop item loop $(type).$(index)

# Return if index is too high
$execute if score 27 number matches ..$(index) run return 1

## Funtionality
# Copy current slot to intermediary for data compare
$item replace entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] weapon.mainhand from entity @s $(type).$(index)

# IF card is not spellbound AND item is on drop on death list, call drop
$execute unless data entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] {equipment:{mainhand:{components:{"minecraft:custom_data":{is_spellsling:"true"}}}}} if items entity @s $(type).$(index) #exigence:drop_on_death run function exigence:player/drop/drop_slot {type:'$(type)',index:$(index)}
#   IF bag of holding, do not drop bag items
$execute unless data entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] {equipment:{mainhand:{components:{"minecraft:custom_data":{is_spellsling:"true"}}}}} if items entity @s $(type).$(index) #exigence:consumable unless score @s game.player.mod.void_bundle matches 1.. run function exigence:player/drop/drop_slot {type:'$(type)',index:$(index)}


## Clean up and iterate:
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
function exigence:player/death/drop_items_loop with storage exigence:give