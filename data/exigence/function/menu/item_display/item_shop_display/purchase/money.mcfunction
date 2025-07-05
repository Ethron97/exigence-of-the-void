# Called by item shop display purchase

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

# If not creative, clear X
$clear @a[tag=ItemShopping,gamemode=!creative,tag=Interacting] diamond $(money_cost)

# Call item summon
$execute at @s run function exigence:hub/item_shop/frame/item/summon_item {item_name:$(item_name)}
#execute as @e[type=minecraft:item,tag=NSS] at @s at @p[tag=ItemShopping] anchored eyes facing entity @s eyes run tp @s ^3 ^ ^

# Set item origin to player UUID
execute as @a[tag=ItemShopping,tag=Interacting] run data modify entity @e[distance=..1,type=item,tag=NSS,limit=1,sort=nearest] Owner set from entity @s UUID

execute as @e[type=minecraft:item,tag=NSS] at @s run tp @s @p[tag=ItemShopping,tag=Interacting]
tag @e[type=minecraft:item,tag=NSS] remove NSS

# Playsound
execute at @s run playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1
