data merge entity @s {Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Dust of Appearance ",italic:false,bold:true,color:"yellow"},{text:"✨",italic:false,bold:true,color:"white"}]}}}
#data merge entity @s {Item:{id:"minecraft:air",count:1,components:{"minecraft:custom_name":''}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value ''
data modify entity @s Item.components."minecraft:custom_model_data".strings set value [""]
#data modify entity @s Item.components."minecraft:enchantments" set value {levels:{'minecraft:vanishing_curse':1}
#data modify entity @s Item.components."minecraft:unbreakable" set value {}
#data modify entity @s Item.components."minecraft:dyed_color" set value 0
#data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:wild',material:'minecraft:redstone'}
#data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'feet'}]
#data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:speed",duration:1200,amplifier:1}],custom_color:16711680

data modify entity @s Item.components."minecraft:lore" append value [{text:"✪",italic:false,color:"white"},{text:"✪✪✪ ",italic:false,color:"dark_gray"},{text:"Recharging Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Reveal all hidden blocks within 15 blocks",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Recharge: Use once per run by throwing the",color:"dark_gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"item. Returns after the run is complete.",color:"dark_gray"}]
