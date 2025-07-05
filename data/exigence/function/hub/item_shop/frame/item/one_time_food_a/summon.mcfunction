$data merge entity @s {Item:{id:"minecraft:nether_star",count:1,components:{"minecraft:custom_name":[{text:"∞ ",italic:false,color:"white"},\
{text:"Efficient Cooking",italic:false,color:"$(legendary)",bold:true},{text:" ∞",italic:false,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'one_time_food_a'
data modify entity @s Item.components."minecraft:custom_data".one_time set value 1

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Permanent Upgrade",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Increase Food ",italic:false,color:"gray"},{text:"🥣 ",italic:false,color:"yellow"},{text:"item limit by 1",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Consumable ",italic:false,color:"gray"},{text:"🥣🧪💼 ",italic:false,color:"yellow"},{text:"item",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"limit increased by 1",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(One time purchase)",italic:false,color:"dark_gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Applies to everyone in Coop)",italic:false,color:"dark_gray"}]
