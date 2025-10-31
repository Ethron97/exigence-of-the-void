# Iterate over enderchest slots to find first matching card to reduce by 1

## INPUT
#   STR card_name
#   INT index

#=================================================================================================

# DEBUG
#$say Check card loop remove card$(index)

# Return if index is too high
$execute if score 27 number matches ..$(index) run return 1



## Funtionality
# OLD ENDERCHEST LOGIC
# If card name of slot matches reduce by 1 and end
#scoreboard players set #temp Temp 0
#$execute if items entity @a[tag=PrimaryPlayer,limit=1] enderchest.$(index) paper[custom_data={card_name:'$(card_name)'}] run scoreboard players set #temp Temp 1
#$execute if score #temp Temp matches 1 run item modify entity @a[tag=PrimaryPlayer,limit=1] enderchest.$(index) exigence:decrement
#execute if score #temp Temp matches 1 run return 1

#   CHEST HALF 1
# If card name of slot matches reduce by 1 and end
scoreboard players set #temp Temp 0
$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] if items block ~2 ~ ~0 container.$(index) paper[custom_data={card_name:'$(card_name)'}] run scoreboard players set #temp Temp 1
$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] if score #temp Temp matches 1 run item modify block ~2 ~ ~0 container.$(index) exigence:decrement
execute if score #temp Temp matches 1 run return 1

#   CHEST HALF 2
# If card name of slot matches reduce by 1 and end
scoreboard players set #temp Temp 0
$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] if items block ~2 ~ ~1 container.$(index) paper[custom_data={card_name:'$(card_name)'}] run scoreboard players set #temp Temp 1
$execute at @e[type=armor_stand,tag=PlayerNode,tag=Active] if score #temp Temp matches 1 run item modify block ~2 ~ ~1 container.$(index) exigence:decrement
execute if score #temp Temp matches 1 run return 1



## Clean up and iterate:
# Copy input to storage
$data modify storage exigence:give index set value $(index)

# Increase index by 1
$scoreboard players set #temp Temp $(index)
scoreboard players add #temp Temp 1

# Copy index back to storage
execute store result storage exigence:give index int 1 run scoreboard players get #temp Temp

# Iterate
function exigence:deck/post_process/remove_card_loop with storage exigence:give
