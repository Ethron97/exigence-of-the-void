# Randomizes the shop contents based on the number of shop slots
# Called by void_menu/load

## CONSTRAINTS
#   AT location (arbitrary, as long as the chunk is loaded)

#====================================================================================================

# Summon markers with item names as data
# WEIGHT 3
#summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","golden_carrot"],data:{custom_data:{item:'golden_carrot'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","golden_carrot"],data:{custom_data:{item:'golden_carrot'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","golden_carrot"],data:{custom_data:{item:'golden_carrot'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","golden_carrot"],data:{custom_data:{item:'golden_carrot'}}}
#summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","golden_apple"],data:{custom_data:{item:'golden_apple'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","golden_apple"],data:{custom_data:{item:'golden_apple'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","golden_apple"],data:{custom_data:{item:'golden_apple'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","golden_apple"],data:{custom_data:{item:'golden_apple'}}}

summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","ender_pearl"],data:{custom_data:{item:'ender_pearl'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","ender_pearl"],data:{custom_data:{item:'ender_pearl'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","ender_pearl"],data:{custom_data:{item:'ender_pearl'}}}

# WEIGHT 2
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","totem_of_undying"],data:{custom_data:{item:'totem_of_undying'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","totem_of_undying"],data:{custom_data:{item:'totem_of_undying'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","clock"],data:{custom_data:{item:'clock'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","clock"],data:{custom_data:{item:'clock'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","master_key"],data:{custom_data:{item:'master_key'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","master_key"],data:{custom_data:{item:'master_key'}}}

# WEIGHT 1
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","boots_sculk"],data:{custom_data:{item:'boots_sculk'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","leggings_artifact"],data:{custom_data:{item:'leggings_artifact'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","wings"],data:{custom_data:{item:'wings'}}}
summon minecraft:marker ~ ~ ~ {Tags:["RandomVoid","helmet_deck"],data:{custom_data:{item:'helmet_deck'}}}
# ...

# Select X random from the markers
#   Default of 3, can be 4-6 if cards played
#execute if score mod.void_shop_slots game.modifiers matches 3 run tag @e[type=minecraft:marker,tag=RandomVoid,distance=..1,sort=random,limit=3] add SelectedVoid
#execute if score mod.void_shop_slots game.modifiers matches 4 run tag @e[type=minecraft:marker,tag=RandomVoid,distance=..1,sort=random,limit=4] add SelectedVoid
#execute if score mod.void_shop_slots game.modifiers matches 5 run tag @e[type=minecraft:marker,tag=RandomVoid,distance=..1,sort=random,limit=5] add SelectedVoid
#execute if score mod.void_shop_slots game.modifiers matches 6 run tag @e[type=minecraft:marker,tag=RandomVoid,distance=..1,sort=random,limit=6] add SelectedVoid
function exigence:menu/void_menu/private/select_shop_item
function exigence:menu/void_menu/private/select_shop_item
function exigence:menu/void_menu/private/select_shop_item
execute if score mod.void_shop_slots game.modifiers matches 4.. run function exigence:menu/void_menu/private/select_shop_item
execute if score mod.void_shop_slots game.modifiers matches 5.. run function exigence:menu/void_menu/private/select_shop_item
execute if score mod.void_shop_slots game.modifiers matches 6.. run function exigence:menu/void_menu/private/select_shop_item

# Reset data
data modify storage exigence:void_shop selected set value []

# Add item_names to array if selected
execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=golden_carrot,distance=..1] run data modify storage exigence:void_shop selected append value golden_carrot
execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=golden_apple,distance=..1] run data modify storage exigence:void_shop selected append value golden_apple

execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=ender_pearl,distance=..1] run data modify storage exigence:void_shop selected append value ender_pearl

execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=totem_of_undying,distance=..1] run data modify storage exigence:void_shop selected append value totem_of_undying
execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=clock,distance=..1] run data modify storage exigence:void_shop selected append value clock
execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=master_key,distance=..1] run data modify storage exigence:void_shop selected append value master_key

execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=boots_sculk,distance=..1] run data modify storage exigence:void_shop selected append value boots_sculk
execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=leggings_artifact,distance=..1] run data modify storage exigence:void_shop selected append value leggings_artifact
execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=wings,distance=..1] run data modify storage exigence:void_shop selected append value wings
execute if entity @n[type=minecraft:marker,tag=SelectedVoid,tag=helmet_deck,distance=..1] run data modify storage exigence:void_shop selected append value helmet_deck
# ...

# Kill markers
kill @e[type=minecraft:marker,tag=RandomVoid,distance=..1]
