# Summon NORMAL berries from random amount

## CONSTRAINTS
#   AT position

## INPUT
#   INT random_drop

#=================================================================================================

$execute if score $(random_drop) number matches 1.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 2.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 3.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 4.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 5.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 6.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 7.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 8.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 9.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 10.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 11.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 12.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 13.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 14.. run loot spawn ~ ~ ~ loot exigence:drop_berry
$execute if score $(random_drop) number matches 15.. run loot spawn ~ ~ ~ loot exigence:drop_berry

#$summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_slice",\
components:{"minecraft:custom_model_data":{"strings":["berry"]},"minecraft:custom_name":[{text:"🍒 Berry 🍒",color:"green",italic:false}],\
lore:[[{text:"(Transient)",color:"dark_gray",italic:false}],[{text:""}],[{text:"1🍖 ",color:"gold",italic:false},{text:"0.6🍖",color:"yellow",italic:false}]]},count:$(random_drop)}}

# If harvest, fling berries towards player
execute if score #picked_with_harvest Temp matches 1 as @e[type=minecraft:item,distance=..1] if items entity @s container.* sweet_berries[custom_data~{dropped_from_bush:true}] run function exigence:botany/private/fling_berry