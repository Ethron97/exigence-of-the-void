$data merge entity @s {Item:{id:"minecraft:dragon_breath",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Dragon Breath ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'dragon_breath'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Enemies that come within 5 blocks of",italic:false,color:"gray"}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"of you ",italic:false,color:"gray"},{text:"glow ",italic:false,color:"$(effect)"}\
,{text:"for the rest of the run.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Can affect up to 5 enemies at once.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value {text:"Player Passive",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:": Modifier is applied for the duration of the run",color:"dark_gray"}
