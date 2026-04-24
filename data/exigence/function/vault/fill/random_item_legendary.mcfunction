# Fill pot with random LEGENDARY item

## CONSTRAINTS
#   AT pot to fill

#====================================================================================================

# Randomly summon a common item from switch
#   OLD METHOD
#execute store result score #random Random run random value 1..6
#execute positioned 537.5 0.0 472.5 if score #random Random matches 1 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_speed_1_f'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 2 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_speed_4'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 3 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_health_g'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 4 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_invis_b'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 5 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_jump_2_d'}
#execute positioned 537.5 0.0 472.5 if score #random Random matches 6 run function exigence:hub/item_shop/item/summon_item {item_name:'potion_jump_8'}

# Call as random item shop display
execute in exigence:hub as @e[x=-59,y=190,z=-13,dx=35,dy=18,dz=25,type=minecraft:item_display,scores={shop.frame.rarity=4},tag=ItemShopDisplay,tag=MenuConsumable,sort=random,limit=1] \
in minecraft:overworld positioned 537.5 0.0 472.5 run function exigence:hub/item_shop/item/summon_item with entity @s item.components."minecraft:custom_data"

# Call fill/from_item
execute as @e[x=537,y=0,z=472,dx=0,dy=0,dz=0,type=minecraft:item,tag=NSS] run function exigence:vault/fill/from_item with entity @s Item

# Delete item with tag
execute as @e[x=537,y=0,z=472,dx=0,dy=0,dz=0,type=minecraft:item,tag=NSS] run kill @s
