$data merge entity @s {Item:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:custom_name":[{text:"🥋 ",italic:false,color:"white"},\
{text:"Metamorphising Mantle",italic:false,color:"$(legendary)",bold:true},{text:" 🥋",italic:false,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'chestplate_regen_f'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:dyed_color" set value 1824318
data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:snout',material:"redstone"}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'chest'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Chestplate ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Whenever you gain ",italic:false,color:"gray"},{text:"Regeneration",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"gain +1 ",italic:false,color:"gray"},{text:"❤ ",italic:false,color:"red"},{text:"max health",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Increase duration of ",italic:false,color:"gray"},{text:"Regeneration",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"from cards by +60 seconds",italic:false,color:"gray"}]
