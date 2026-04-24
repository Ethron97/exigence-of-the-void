# Iterate over enderchest slots to find first matching card to reduce by 1

## INPUT
#   AT profile node
#   STR card_name
#   INT index

#====================================================================================================

# DEBUG
#$say (D4) Check card loop remove card$(index)

# Return if index is too high
$execute if score 27 number matches ..$(index) run return 1
#----------------------------------------------------------------------------------------------------

## Funtionality
#   CHEST HALF 1
# If card name of slot matches reduce by 1 and end
$execute if items block ~1 ~1 ~0 container.$(index) paper[custom_data={card_name:'$(card_name)'}] \
run return run item modify block ~1 ~1 ~0 container.$(index) exigence:decrement
#----------------------------------------------------------------------------------------------------

#   CHEST HALF 2
# If card name of slot matches reduce by 1 and end
$execute if items block ~2 ~1 ~0 container.$(index) paper[custom_data={card_name:'$(card_name)'}] \
run return run item modify block ~2 ~1 ~0 container.$(index) exigence:decrement
#----------------------------------------------------------------------------------------------------

## Clean up and iterate:
# Increase index by 1
$scoreboard players set #temp Temp $(index)
scoreboard players add #temp Temp 1
# Copy index back to storage
execute store result storage exigence:give index int 1 run scoreboard players get #temp Temp

# Iterate
function exigence:deck/post_process/remove_card_loop with storage exigence:give
