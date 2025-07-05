$data merge entity @s {Item:{id:"minecraft:trident",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Riptide ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'riptide'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:enchantments" set value {riptide:2}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:attack_damage',id:'exigence:no',amount:0.0,operation:'add_multiplied_base'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Active Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"While in water, can be thrown",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"to launch the wielder forward",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Player Active: Hold to use",color:"dark_gray"}]
