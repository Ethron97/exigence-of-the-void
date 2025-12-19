# Call with data card_name

#$say Get cost $(card_name)

# Reset
scoreboard players set green.cost game.resources 0
scoreboard players set red.cost game.resources 0
scoreboard players set aqua.cost game.resources 0

# Get resource costs for input card
$function exigence:cards/$(card_name)/get_cost

# Copy to storage
execute store result storage exigence:resources green int 1 run scoreboard players get green.cost game.resources
execute store result storage exigence:resources red int 1 run scoreboard players get red.cost game.resources
execute store result storage exigence:resources aqua int 1 run scoreboard players get aqua.cost game.resources
