$data merge entity @s {Item:{id:"minecraft:red_dye",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" War Paint ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'heighten'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Heighten ",italic:false,color:"$(effect)"},{text:"triples, rather than doubles,",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"the duration of positive ",italic:false,color:"gray"},{text:"Effect(s)",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"from the next card with at least",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"one positive ",italic:false,color:"gray"},{text:"Effect",italic:false,color:"$(effect)"}]

#$data modify entity @s Item.components."minecraft:lore" append value [{text:"+2 ",italic:false,color:"gray"},{text:"Heighten",italic:false,color:"$(effect)"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",italic:false,color:"gray"},{text:"☢ ",italic:false,color:"red"},{text:"on echo level",italic:false,color:"gray"}]

data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Player Passive",color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:": Modifier is applied for the duration of the run",color:"dark_gray"}]
