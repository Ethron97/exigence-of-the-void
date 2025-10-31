# Call with data card_name

#$say Get cost $(card_name)

# Reset
scoreboard players set Green.Cost game.resources 0
scoreboard players set Red.Cost game.resources 0
scoreboard players set Aqua.Cost game.resources 0

# Get resource costs for input card
$function exigence:cards/$(card_name)/get_cost

# Copy to storage
execute store result storage exigence:resources green int 1 run scoreboard players get Green.Cost game.resources
execute store result storage exigence:resources red int 1 run scoreboard players get Red.Cost game.resources
execute store result storage exigence:resources aqua int 1 run scoreboard players get Aqua.Cost game.resources
