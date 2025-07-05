tag @s add Active

data modify storage exigence:bookshelf slot_0 set value 0
data modify storage exigence:bookshelf slot_1 set value 0
data modify storage exigence:bookshelf slot_2 set value 0
data modify storage exigence:bookshelf slot_3 set value 0
data modify storage exigence:bookshelf slot_4 set value 0
data modify storage exigence:bookshelf slot_5 set value 0

data modify storage exigence:bookshelf slot_0_occupied set value 'false'
data modify storage exigence:bookshelf slot_1_occupied set value 'false'
data modify storage exigence:bookshelf slot_2_occupied set value 'false'
data modify storage exigence:bookshelf slot_3_occupied set value 'false'
data modify storage exigence:bookshelf slot_4_occupied set value 'false'
data modify storage exigence:bookshelf slot_5_occupied set value 'false'

execute as @s[type=minecraft:armor_stand,tag=BookshelfNode,tag=FacingEast] run data modify storage exigence:bookshelf facing set value 'east'
execute as @s[type=minecraft:armor_stand,tag=BookshelfNode,tag=FacingWest] run data modify storage exigence:bookshelf facing set value 'west'
execute as @s[type=minecraft:armor_stand,tag=BookshelfNode,tag=FacingNorth] run data modify storage exigence:bookshelf facing set value 'north'
execute as @s[type=minecraft:armor_stand,tag=BookshelfNode,tag=FacingSouth] run data modify storage exigence:bookshelf facing set value 'south'

execute store result score @s Random run random value 1..4
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_0 set value 1
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_0_occupied set value 'true'
execute store result score @s Random run random value 1..4
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_1 set value 1
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_1_occupied set value 'true'
execute store result score @s Random run random value 1..4
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_2 set value 1
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_2_occupied set value 'true'
execute store result score @s Random run random value 1..4
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_3 set value 1
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_3_occupied set value 'true'
execute store result score @s Random run random value 1..4
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_4 set value 1
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_4_occupied set value 'true'
execute store result score @s Random run random value 1..4
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_5 set value 1
execute if score @s Random matches 1 run data modify storage exigence:bookshelf slot_5_occupied set value 'true'


# Set the block with proper facings and block state
execute at @s run function exigence:mirror/bookshelf/bookshelves/node/activate_macro with storage exigence:bookshelf


# Update data
execute at @s if data storage exigence:bookshelf {slot_0:1} run data modify block ~ ~ ~ Items append value {count:1,Slot:0b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"white",italic:false}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
execute at @s if data storage exigence:bookshelf {slot_1:1} run data modify block ~ ~ ~ Items append value {count:1,Slot:1b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"white",italic:false}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
execute at @s if data storage exigence:bookshelf {slot_2:1} run data modify block ~ ~ ~ Items append value {count:1,Slot:2b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"white",italic:false}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
execute at @s if data storage exigence:bookshelf {slot_3:1} run data modify block ~ ~ ~ Items append value {count:1,Slot:3b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"white",italic:false}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
execute at @s if data storage exigence:bookshelf {slot_4:1} run data modify block ~ ~ ~ Items append value {count:1,Slot:4b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"white",italic:false}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
execute at @s if data storage exigence:bookshelf {slot_5:1} run data modify block ~ ~ ~ Items append value {count:1,Slot:5b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"white",italic:false}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}



#say Activat#
#execute store result score @s Random run random value 1..5
#execute if score @s Random matches 1.. run data modify block ~ ~ ~ Items append value {count:1,Slot:0b,id:"minecraft:book"}
#execute store result score @s Random run random value 1..5
#execute if score @s Random matches 1.. run data modify block ~ ~ ~ Items append value {count:1,Slot:1b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"gray"}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
#execute store result score @s Random run random value 1..5
#execute if score @s Random matches 1.. run data modify block ~ ~ ~ Items append value {count:1,Slot:2b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"gray"}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
#execute store result score @s Random run random value 1..5
#execute if score @s Random matches 1.. run data modify block ~ ~ ~ Items append value {count:1,Slot:3b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"gray"}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
#execute store result score @s Random run random value 1..5
#execute if score @s Random matches 1.. run data modify block ~ ~ ~ Items append value {count:1,Slot:4b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"gray"}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
#execute store result score @s Random run random value 1..5
#execute if score @s Random matches 1.. run data modify block ~ ~ ~ Items append value {count:1,Slot:5b,id:"minecraft:book",components:{"minecraft:custom_name":[{text:"📕 Dusty Tome 📕",color:"gray"}],"minecraft:lore":[[{text:"Filled with indecipherable writings, it is a",color:"gray"}],[{text:"reflection of the decaying city around it",color:"gray"}]]}}
