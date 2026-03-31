# Implements load item display, summons new shop item display

## CONSTRAINTS:
# AT where to place item display

## INPUT:
#   STR menu_tag
#   STR item_name
#   INT money_cost
#   INT research_cost
#   STR[] parents
#   INT num_parents
#   INT(1-4) rarity (1=common,2=uncommon etc)
#   INT(1-7) tier (1-7, determines story beat required to unlock)
# {item_name:'',money_cost:0,research_cost:0,parents:[],rarity:1,tier:1}

#====================================================================================================

# DEBUG
#$say money item display $(Rotation)

# Summon item (unless existing NSS exists)
$execute unless entity @n[type=item,tag=NSS,distance=..0.01] run function exigence:hub/item_shop/item/summon_item {item_name:'$(item_name)'}

# Setup item data
#   This also summons the NewItemDisplay
$execute as @n[type=minecraft:item,tag=NSS,distance=..0.01] run function exigence:menu/money_menus/money_item_display_item {menu_tag:'$(menu_tag)',money_cost:$(money_cost),research_cost:$(research_cost),parents:$(parents),Rotation:'$(Rotation)'}

# Store useful item name for debugging
$data modify storage exigence:temp custom_name set value {text:"ItemDisplay | MenuDisplay | $(item_name)"}
# shop.frame.rarity (1=Common, 2=Uncommon, 3=Rare, 4=Legendary)
$scoreboard players set #compare shop.frame.rarity $(rarity)
# Tier (sub-rarity)
$scoreboard players set #compare shop.frame.tier $(tier)
# Number of parents
$scoreboard players set #compare shop.frame.parents $(num_parents)
# Store item name as tag because its faster than nbt
$tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] add $(item_name)

execute as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] run function exigence:menu/money_menus/money_item_display_data

