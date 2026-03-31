# Called by item shop display purchase

## CONSTRAINTS
#   AS/AT item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# If not creative, clear X
$clear @p[tag=ItemShop,tag=Interacting,distance=..16,gamemode=!creative] diamond $(money_cost)
$scoreboard players remove #Total shop.player.money_to_spend $(money_cost)

# Call item summon
$function exigence:hub/item_shop/item/summon_item {item_name:$(item_name)}

# Set item origin to player UUID
execute as @p[tag=ItemShop,tag=Interacting,distance=..16] run data modify entity @n[type=item,tag=NSS,distance=..0.1] Owner set from entity @s UUID

execute as @n[type=minecraft:item,tag=NSS,distance=..0.1] at @s run tp @s @p[tag=ItemShop,tag=Interacting,distance=..16]
tag @n[type=minecraft:item,tag=NSS,distance=..0.1] remove NSS

# Playsound
playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1

# Update displays
execute at @s run function exigence:menu/item_display/item_shop_display/update_purchasability_displays with entity @s item.components."minecraft:custom_data"
