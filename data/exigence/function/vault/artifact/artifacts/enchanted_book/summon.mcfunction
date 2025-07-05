$data merge entity @s {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Enchanted Book ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'enchanted_book'
data modify entity @s Item.components."minecraft:custom_data".is_soulbound set value 1b

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",italic:false,color:"gray"},{text:"🧾 ",italic:false,color:"$(spellbind)"},{text:"at the start of the run.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
$data modify entity @s Item.components."minecraft:lore" append value [{text:"You get +60s duration on ",italic:false,color:"gray"},{text:"effects ",italic:false,color:"$(effect)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"from Spellbound cards",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Resource, chosen at random",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value {text:"Player Passive",color:"dark_gray"}
#data modify entity @s Item.components."minecraft:lore" append value {text:": Modifier is applied for the duration of the run",color:"dark_gray"}
