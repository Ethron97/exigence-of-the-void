# Call at position of pot to fill

# Randomly summon a common item from switch
# Void shop isn't perma loaded like the others sowe have to keep the switch
execute store result score random Random run random value 1..6

execute positioned -310.5 3.0 -96.5 if score random Random matches 1 run function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:'clock'}
execute positioned -310.5 3.0 -96.5 if score random Random matches 2 run function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:'ender_pearl'}
execute positioned -310.5 3.0 -96.5 if score random Random matches 3 run function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:'golden_apple'}
execute positioned -310.5 3.0 -96.5 if score random Random matches 4 run function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:'golden_carrot'}
execute positioned -310.5 3.0 -96.5 if score random Random matches 5 run function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:'totem_of_undying'}
execute positioned -310.5 3.0 -96.5 if score random Random matches 6 run function exigence:menu/item_display/void_shop_display/items/summon_item {item_name:'master_key'}

# Call fill/from_item
execute as @e[type=minecraft:item,tag=NVS] run function exigence:vault/fill/from_item with entity @s Item

# Delete item with tag
execute as @e[type=minecraft:item,tag=NVS] run kill @s
