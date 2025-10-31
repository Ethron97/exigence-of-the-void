# Clears all leftover spellbound cards from player inventory
#   Needed at game win/loss because carrot on stick is used by other stuff

## CONSTRAINTS
#   AS player

## INPUT
#   STR type - 'inventory' or 'hotbar'
#   INT index - 0-8 for 'hotbar', 0-26 for 'inventory'

#=========================================================================================================

# DEBUG
#$say Clearing all spellbound item loop $(type).$(index)

# Sanity
execute unless entity @e[type=minecraft:armor_stand,tag=intermediary] run summon minecraft:armor_stand -382.47 37.00 -115.34 {Tags:[intermediary],ShowArms:1b}

# Return if index is too high
$execute if score 27 number matches ..$(index) run return 1

# Copy item to imtermediary for data get
$item replace entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] weapon.mainhand from entity @s $(type).$(index)

# If spellsling, remove
$execute if data entity @e[type=minecraft:armor_stand,tag=intermediary,limit=1] {equipment:{mainhand:{components:{"minecraft:custom_data":{is_spellsling:'true'}}}}} run item replace entity @s $(type).$(index) with air

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
function exigence:player/clear/all_spellbound with storage exigence:give