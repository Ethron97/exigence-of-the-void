$data merge entity @s {Item:{id:"minecraft:wind_charge",count:1,components:{"minecraft:custom_name":[{text:"💼 ",italic:false,color:"white"},\
{text:"Wind Charge",italic:false,color:"$(rare)",bold:true},{text:" 💼",italic:false,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'wind_charge'

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Consumable",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Creates an explosive gust of wind",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Throw to use)",italic:false,color:"dark_gray"}]
