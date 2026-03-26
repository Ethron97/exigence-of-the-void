# Called by update_purchasability_a
#   Handles reassignment of tags
#   Only needed to be run on a shop display when the shop first loads, or if this
#      or a direct child frame gets researched

## CONSTRAINTS
#   AS ItemShopDisplay

#====================================================================================================

#execute if score #ttttt Temp matches 1 run say Update purchasability TAGS (is_researched, etc)
#say Update purchsability dependencies (is researched, etc)

# Update is researched
execute as @s[tag=!Artifact] run function exigence:menu/item_display/item_shop_display/is_researched with entity @s item.components."minecraft:custom_data"
execute as @s[tag=Artifact] run function exigence:menu/item_display/item_shop_display/is_researched_artifact with entity @s item.components."minecraft:custom_data"

# Update is one time purchased
execute as @s[tag=OneTime] run function exigence:menu/item_display/item_shop_display/is_one_time_purchased with entity @s item.components."minecraft:custom_data"

# Update Tier unlocked
#   #tier Temp gets set by load_unlocks -> get from profile
tag @s remove IsTierUnlocked
execute if score @s shop.frame.tier <= #tier Temp run tag @s add IsTierUnlocked

# Update is parent researched
execute as @s[tag=HasParents] run function exigence:menu/item_display/item_shop_display/is_parents_researched
