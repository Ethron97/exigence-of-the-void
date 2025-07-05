# Handles data for newly summoned menu item

## CONSTRAINTS:
#   AS MenuItemDisplay

## INPUT:
#   INT(1-4) rarity (1=common,2=uncommon etc)
#   INT(1-7) tier (1-7, determines story beat required to unlock)


#=============================================================================================================

# Give tag if has parents
execute if data entity @s item.components."minecraft:custom_data".parents[0] run tag @s add HasParents

# If does not have parents, give IsParentResearched
tag @s[tag=!HasParents] add IsParentResearched

# Give ItemShopDisplay tag
tag @s add ItemShopDisplay

# Give Loaded tag
tag @s add Loaded

# Give onetime tag if has onetime data
execute if data entity @s item.components."minecraft:custom_data".one_time run tag @s add OneTime

# Update is researched
execute as @s[tag=!Artifact] run function exigence:menu/item_display/item_shop_display/is_researched with entity @s item.components."minecraft:custom_data"
execute as @s[tag=Artifact] run function exigence:menu/item_display/item_shop_display/is_researched_artifact with entity @s item.components."minecraft:custom_data"

# Rarity, tag (1=Common, 2=Uncommon, 3=Rare, 4=Legendary)
scoreboard players operation @s Rarity = #compare Rarity

# Tier (sub-rarity)
scoreboard players operation @s ItemShopTier = #compare ItemShopTier

# Remove local tag(s)
tag @s remove NewItemDisplay
