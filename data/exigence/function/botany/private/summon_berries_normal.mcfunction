# Summon NORMAL berries from random amount

## CONSTRAINTS
#   AT position

## INPUT
#   INT random_drop

#=================================================================================================

$summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_slice",\
components:{"minecraft:custom_model_data":{"strings":["berry"]},"minecraft:custom_name":[{text:"🍒 Berry 🍒",color:"green",italic:false}],\
lore:[[{text:"Transient",color:"dark_gray"}],[{text:""}],[{text:"1🍖 ",color:"gold",italic:false},{text:"0.6🍖",color:"yellow",italic:false}]]},count:$(random_drop)}}
