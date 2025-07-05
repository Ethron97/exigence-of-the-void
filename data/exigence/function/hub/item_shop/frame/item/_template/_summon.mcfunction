$data merge entity @s {Item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_name":[{text:"🛠",italic:false,bold:true,color:"white"}\
,{text:" Item Name ",italic:false,bold:true,color:"$(common)"},{text:"🛠",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data" set value {item_name:''}
#data modify entity @s Item.components."minecraft:enchantments" set value {levels:{'minecraft:vanishing_curse':1}
#data modify entity @s Item.components."minecraft:unbreakable" set value {}
#data modify entity @s Item.components."minecraft:dyed_color" set value 0
#data modify entity @s Item.components."minecraft:trim" set value {pattern:'minecraft:wild',material:'minecraft:redstone'}
#data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'feet'}]
#data modify entity @s Item.components."minecraft:potion_contents" set value {custom_effects:[{id:"minecraft:speed",duration:1200,amplifier:1}],custom_color:16711680

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Item Type",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Lore 2",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Lore 3",italic:false,color:"white"}]
