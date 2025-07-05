$data merge entity @s {Item:{id:"minecraft:armadillo_scute",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Lucky Ravager Hoof ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'ravager_hoof'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"You do not break ",italic:false,color:"gray"},{text:"Ravager Glass™",italic:false,color:"red"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Player Passive",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:": Modifier is applied for the duration of the run",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"(Coop Stackable ✖)",color:"dark_gray"}]
