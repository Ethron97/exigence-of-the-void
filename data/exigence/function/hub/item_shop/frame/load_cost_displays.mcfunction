# Call as shop frame
#say load cost displays
# Store costs in data before calling create statement
execute store result storage exigence:shop money_cost int 1 run scoreboard players get @s MoneyCost
execute store result storage exigence:shop research_cost int 1 run scoreboard players get @s ResearchCost
data modify storage exigence:shop frame_name set from entity @s CustomName

execute as @s at @s run function exigence:hub/item_shop/frame/private/create_text_displays with storage exigence:shop