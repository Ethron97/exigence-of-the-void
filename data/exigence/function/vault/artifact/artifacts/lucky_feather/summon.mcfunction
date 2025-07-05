$data merge entity @s {Item:{id:"minecraft:feather",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Lucky Feather ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'lucky_feather'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
#data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:generic.gravity',uuid:[1,27,3,4],name:'Gravity',amount:-0.4,operation:'add_multiplied_base'}],show_in_tooltip:true}

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Active Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Grants ",italic:false,color:"gray"},{text:"Slow Falling",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Player Active: Hold to use",color:"dark_gray"}]
