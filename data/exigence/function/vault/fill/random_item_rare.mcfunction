# Fill pot with random RARE item

## CONSTRAINTS
#   AT pot to fill

#====================================================================================================

# Randomly summon a common item from switch
#   OLD METHOD
#execute store result score #random Random run random value 1..16
#execute positioned 537.5 0.0 472.5 if score #random Random matches 1 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_speed_1_d'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 2 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_speed_1_e'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 3 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_speed_2'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 4 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_speed_3'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 5 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_health_e'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 6 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_health_f'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 7 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_invis_a'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 8 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_jump_2_b'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 9 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_jump_2_c'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 10 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_jump_4'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 11 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_jump_6'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 12 run function exigence:hub/item_shop/item/summon_item {item_name:'food_e'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 13 run function exigence:hub/item_shop/item/summon_item {item_name:'food_f'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 14 run function exigence:hub/item_shop/item/summon_item {item_name:'wind_charge'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 15 run function exigence:hub/item_shop/item/summon_item {item_name:'chorus_fruit'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 16 run function exigence:hub/item_shop/item/summon_item {item_name:'dust_heighten'}

# Call as random item shop display
execute in exigence:hub as @e[x=-59,y=190,z=-13,dx=35,dy=18,dz=25,type=minecraft:item_display,scores={shop.frame.rarity=3},tag=ItemShopDisplay,tag=MenuConsumable,sort=random,limit=1] \
in minecraft:overworld positioned 537.5 0.0 472.5 run function exigence:hub/item_shop/item/summon_item with entity @s item.components."minecraft:custom_data"

# Call fill/from_item
execute as @e[x=537,y=0,z=472,dx=0,dy=0,dz=0,type=minecraft:item,tag=NSS] run function exigence:vault/fill/from_item with entity @s Item

# Delete item with tag
execute as @e[x=537,y=0,z=472,dx=0,dy=0,dz=0,type=minecraft:item,tag=NSS] run kill @s
