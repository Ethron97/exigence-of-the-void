# Called by item shop display purchase for artifacts

## CONSTRAINTS
#   AS item_display

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

# If not creative, clear X
$clear @a[tag=ItemShopping,gamemode=!creative,tag=Interacting] diamond $(money_cost)

# Call item summon
$execute at @s run function exigence:vault/artifact/summon_item {item_name:$(item_name)}
#execute as @e[type=minecraft:item,tag=NSS] at @s at @p[tag=ItemShopping] anchored eyes facing entity @s eyes run tp @s ^3 ^ ^

execute as @e[type=minecraft:item,tag=NAS] at @s run tp @s @p[tag=ItemShopping,tag=Interacting]
tag @e[type=minecraft:item,tag=NAS] remove NAS

# Playsound
execute at @s run playsound minecraft:block.vault.insert_item ambient @a ~ ~ ~ 1 1
