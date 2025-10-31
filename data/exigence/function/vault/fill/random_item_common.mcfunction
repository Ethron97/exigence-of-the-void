# Call at position of pot to fill

# Randomly summon a common item from switch
#   OLD METHOD
#execute store result score #random Random run random value 1..7
#execute positioned -310.5 3.0 -96.5 if score #random Random matches 1 run function exigence:hub/item_shop/item/summon_item {item_name:'food_a'}
#execute positioned -310.5 3.0 -96.5 if score #random Random matches 2 run function exigence:hub/item_shop/item/summon_item {item_name:'food_b'}
#execute positioned -310.5 3.0 -96.5 if score #random Random matches 3 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_health_a'}
#execute positioned -310.5 3.0 -96.5 if score #random Random matches 4 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_health_b'}
#execute positioned -310.5 3.0 -96.5 if score #random Random matches 5 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_speed_1_a'}
#execute positioned -310.5 3.0 -96.5 if score #random Random matches 6 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_slow_a'}
#execute positioned -310.5 3.0 -96.5 if score #random Random matches 7 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_glow_a'}

# Call as random item shop display
execute positioned -310.5 3.0 -96.5 as @e[type=item_display,tag=ItemShopDisplay,scores={shop.frame.rarity=1},tag=MenuConsumable,sort=random,limit=1] run \
function exigence:hub/item_shop/item/summon_item with entity @s item.components."minecraft:custom_data"

# Call fill/from_item
execute as @e[type=minecraft:item,tag=NSS] run function exigence:vault/fill/from_item with entity @s Item

# Delete item with tag
execute as @e[type=minecraft:item,tag=NSS] run kill @s
