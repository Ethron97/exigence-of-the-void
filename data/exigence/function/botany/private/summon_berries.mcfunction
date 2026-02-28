# Summon berries from random amount

$execute if score Ambrosia Modifiers matches 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_slice",\
components:{"minecraft:custom_model_data":{"strings":["berry"]},"minecraft:custom_name":[{text:"🍒 Berry 🍒",color:"green",italic:false}],\
lore:[[{text:"Transient",color:"dark_gray"}],[{text:""}],[{text:"1🍖 ",color:"gold",italic:false},{text:"0.6🍖",color:"yellow",italic:false}]]},count:$(random_drop)}}

# If ambrosia:
$execute if score Ambrosia Modifiers matches 1.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:melon_slice",\
components:{"minecraft:custom_model_data":{"strings":["ambrosia"]},"minecraft:custom_name":[{text:"🍒 Ambrosia 🍒",color:"green",italic:false}],\
lore:[[{text:"Transient",color:"dark_gray"}],[{text:""}],[{text:"1🍖 ",color:"gold",italic:false},{text:"0.6🍖",color:"yellow",italic:false}]]},count:$(random_drop)}}
