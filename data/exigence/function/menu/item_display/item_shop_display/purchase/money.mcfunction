# Called by item shop display purchase

## CONSTRAINTS
#   AS/AT item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#====================================================================================================

# If not creative, clear X
$clear @p[distance=..16,tag=ItemShop,gamemode=!creative,tag=Interacting] diamond $(money_cost)
$scoreboard players remove #Total shop.player.money_to_spend $(money_cost)

# Call item summon
$function exigence:hub/item_shop/item/summon_item {item_name:$(item_name)}

# Set item origin to player UUID
execute as @p[distance=..16,tag=ItemShop,tag=Interacting] run data modify entity @n[distance=..0.1,type=item,tag=NSS] Owner set from entity @s UUID

execute as @n[distance=..0.1,type=minecraft:item,tag=NSS] at @s run tp @s @p[distance=..16,tag=ItemShop,tag=Interacting]
tag @n[distance=..0.1,type=minecraft:item,tag=NSS] remove NSS

# Playsound
playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1
