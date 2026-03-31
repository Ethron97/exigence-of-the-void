# Called by item shop display purchase for artifacts

## CONSTRAINTS
#   AS/AT item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# If not creative, clear X
$clear @p[tag=ItemShop,tag=Interacting,distance=..16,gamemode=!creative] diamond $(money_cost)
$scoreboard players remove #Total shop.player.money_to_spend $(money_cost)

# Call item summon
$function exigence:vault/artifact/summon_item {item_name:$(item_name)}
execute as @n[distance=..0.1,type=minecraft:item,tag=NAS] at @s run tp @s @p[tag=ItemShop,tag=Interacting,distance=..16]
tag @n[distance=..0.1,type=minecraft:item,tag=NAS] remove NAS

# Playsound
playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1

# Update displays
execute at @s run function exigence:menu/item_display/item_shop_display/update_purchasability_displays with entity @s item.components."minecraft:custom_data"
