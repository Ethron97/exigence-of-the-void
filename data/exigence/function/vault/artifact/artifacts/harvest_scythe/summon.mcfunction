$data merge entity @s {Item:{id:"minecraft:golden_hoe",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Harvest Scythe ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'harvest_scythe'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b
data modify entity @s Item.components."minecraft:unbreakable" set value {}
data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:attack_damage',id:'exigence:no',amount:0.0,operation:'add_multiplied_base'}]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Active Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Berry bushes picked with this scythe",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"give +1 berries but no ",italic:false,color:"gray"},{text:"❂",italic:false,color:"dark_green"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Player Active: Hold to use",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"item. Returns after the run is complete.",color:"dark_gray"}]
