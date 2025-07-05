# Call with data card_name

#$say Get cost $(card_name)

# Reset
scoreboard players set GreenCost Resources 0
scoreboard players set RedCost Resources 0
scoreboard players set AquaCost Resources 0

# Get resource costs for input card
$function exigence:cards/$(card_name)/get_cost

# Copy to storage
execute store result storage exigence:resources green int 1 run scoreboard players get GreenCost Resources
execute store result storage exigence:resources red int 1 run scoreboard players get RedCost Resources
execute store result storage exigence:resources aqua int 1 run scoreboard players get AquaCost Resources
