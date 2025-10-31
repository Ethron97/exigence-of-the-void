$data merge entity @s {Item:{id:"minecraft:iron_boots",count:1,components:{"minecraft:custom_name":[{text:"🥾 ",italic:false,bold:true,color:"white"},\
{text:"Panic Boots IV",italic:false,bold:true,color:"$(rare)"},{text:" 🥾",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'boots_panic_d'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:armor',id:'exigence:remove',amount:0.0,operation:'add_multiplied_base',slot:'legs'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Boots ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Gain +8s ",italic:false,color:"gray"}\
,{text:"Speed II",italic:false,color:"$(effect)"},{text:", +2s ",italic:false,color:"gray"},{text:"Jump II",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"whenever you lose any ",italic:false,color:"gray"},{text:"❤",italic:false,color:"red"}]
