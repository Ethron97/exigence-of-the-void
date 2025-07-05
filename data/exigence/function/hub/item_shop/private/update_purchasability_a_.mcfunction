# Called by update_purchasability_a

## CONSTRAINTS
#   AS ItemShopDisplay

#==================================================================================================


# Update is researched
execute as @s[tag=!Artifact] run function exigence:menu/item_display/item_shop_display/is_researched with entity @s item.components."minecraft:custom_data"
execute as @s[tag=Artifact] run function exigence:menu/item_display/item_shop_display/is_researched_artifact with entity @s item.components."minecraft:custom_data"

# Update is one time purchased
execute as @s[tag=OneTime] run function exigence:menu/item_display/item_shop_display/is_one_time_purchased with entity @s item.components."minecraft:custom_data"

# Update Tier unlocked
tag @s remove IsTierUnlocked
execute if score @s ItemShopTier matches 1 if entity @a[tag=ItemShopping,tag=!CoopShopping,advancements={exigence:story/win_difficulty_1=true}] run tag @s add IsTierUnlocked
execute if score @s ItemShopTier matches 2 if entity @a[tag=ItemShopping,tag=!CoopShopping,advancements={exigence:story/rescue_supplier=true}] run tag @s add IsTierUnlocked
execute if score @s ItemShopTier matches 3 if entity @a[tag=ItemShopping,tag=!CoopShopping,advancements={exigence:story/win_difficulty_2=true}] run tag @s add IsTierUnlocked
execute if score @s ItemShopTier matches 4 if entity @a[tag=ItemShopping,tag=!CoopShopping,advancements={exigence:story/rescue_scientist=true}] run tag @s add IsTierUnlocked
execute if score @s ItemShopTier matches 5 if entity @a[tag=ItemShopping,tag=!CoopShopping,advancements={exigence:story/win_difficulty_3=true}] run tag @s add IsTierUnlocked
execute if score @s ItemShopTier matches 6 if entity @a[tag=ItemShopping,tag=!CoopShopping,advancements={exigence:story/rescue_petitioner=true}] run tag @s add IsTierUnlocked
execute if score @s ItemShopTier matches 7.. if entity @a[tag=ItemShopping,tag=!CoopShopping,advancements={exigence:story/win_difficulty_4=true}] run tag @s add IsTierUnlocked

# Update is parent researched
execute as @s[tag=HasParents] run function exigence:menu/item_display/item_shop_display/is_parents_researched
