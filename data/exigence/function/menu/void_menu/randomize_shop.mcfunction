# Randomizes the shop contents based on the number of shop slots
# Called by void_menu/load

# AT location

#=========================================================================================================

# Summon markers with item names as data
summon marker ~ ~ ~ {Tags:["RandomVoid","ender_pearl"]}
summon marker ~ ~ ~ {Tags:["RandomVoid","golden_carrot"]}
summon marker ~ ~ ~ {Tags:["RandomVoid","golden_apple"]}
summon marker ~ ~ ~ {Tags:["RandomVoid","totem_of_undying"]}
summon marker ~ ~ ~ {Tags:["RandomVoid","clock"]}
summon marker ~ ~ ~ {Tags:["RandomVoid","master_key"]}
summon marker ~ ~ ~ {Tags:["RandomVoid","boots_sculk"]}
summon marker ~ ~ ~ {Tags:["RandomVoid","leggings_artifact"]}
summon marker ~ ~ ~ {Tags:["RandomVoid","wings"]}
summon marker ~ ~ ~ {Tags:["RandomVoid","helmet_deck"]}
# ...

# Select X random from the markers
#   Default of 3, can be 4-6 if cards played
execute if score VoidShopSlots Modifiers matches 3 run tag @e[distance=..1,type=minecraft:marker,tag=RandomVoid,sort=random,limit=3] add SelectedVoid
execute if score VoidShopSlots Modifiers matches 4 run tag @e[distance=..1,type=minecraft:marker,tag=RandomVoid,sort=random,limit=4] add SelectedVoid
execute if score VoidShopSlots Modifiers matches 5 run tag @e[distance=..1,type=minecraft:marker,tag=RandomVoid,sort=random,limit=5] add SelectedVoid
execute if score VoidShopSlots Modifiers matches 6 run tag @e[distance=..1,type=minecraft:marker,tag=RandomVoid,sort=random,limit=6] add SelectedVoid

# Reset data
data modify storage exigence:void_shop selected set value []

# Add item_names to array if selected
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=ender_pearl] run data modify storage exigence:void_shop selected append value ender_pearl
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=golden_carrot] run data modify storage exigence:void_shop selected append value golden_carrot
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=golden_apple] run data modify storage exigence:void_shop selected append value golden_apple
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=totem_of_undying] run data modify storage exigence:void_shop selected append value totem_of_undying
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=clock] run data modify storage exigence:void_shop selected append value clock
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=master_key] run data modify storage exigence:void_shop selected append value master_key
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=boots_sculk] run data modify storage exigence:void_shop selected append value boots_sculk
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=leggings_artifact] run data modify storage exigence:void_shop selected append value leggings_artifact
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=wings] run data modify storage exigence:void_shop selected append value wings
execute if entity @e[distance=..1,type=minecraft:marker,tag=SelectedVoid,tag=helmet_deck] run data modify storage exigence:void_shop selected append value helmet_deck
# ...

# Kill markers
kill @e[distance=..1,type=minecraft:marker,tag=RandomVoid]
