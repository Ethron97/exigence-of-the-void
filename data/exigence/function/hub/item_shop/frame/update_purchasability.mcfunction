#say Update purchasability

# Update data for call
execute store result storage exigence:shop money_cost int 1 run scoreboard players get @s MoneyCost
execute store result storage exigence:shop research_cost int 1 run scoreboard players get @s ResearchCost
execute store result storage exigence:shop shop_frame_id int 1 run scoreboard players get @s ShopFrameID
data modify storage exigence:shop frame_name set from entity @s CustomName

execute as @s run function exigence:hub/item_shop/frame/private/update_text_displays with storage exigence:shop

execute if entity @s[tag=CanBuy] run team join Ember @s
execute if entity @s[tag=CanResearch] run team join LightPurple @s
execute if entity @s[tag=!CanBuy,tag=IsResearched] run team join Hazard @s
execute if entity @s[tag=!CanResearch,tag=!IsResearched] run team join Hazard @s

# If tier locked or no children researched, gray
execute if entity @s[tag=!IsTierUnlocked] run team join Spectator @s
execute if entity @s[tag=!IsChildResearched,tag=!RootFrame] run team join Spectator @s

execute at @s if entity @s[tag=!IsTierUnlocked] run setblock ~1 ~ ~ minecraft:oxidized_copper
execute at @s if entity @s[tag=IsTierUnlocked,tag=!IsChildResearched,tag=!RootFrame,tag=!IsResearched] run setblock ~1 ~ ~ minecraft:weathered_copper
execute at @s if entity @s[tag=CanResearch] run setblock ~1 ~ ~ minecraft:exposed_copper
execute at @s if entity @s[tag=CanBuy] run setblock ~1 ~ ~ minecraft:copper_block
