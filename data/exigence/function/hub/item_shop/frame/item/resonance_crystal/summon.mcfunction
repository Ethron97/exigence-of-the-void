$data merge entity @s {Item:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":[{text:"💼 ",italic:false,color:"white"},\
{text:"Universal Resonator",italic:false,color:"$(legendary)",bold:true},{text:" 💼",italic:false,color:"white"}]}}}

data modify entity @s Item.components."minecraft:custom_data".item_name set value 'resonance_crystal'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["resonance_universal"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Consumable",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value {text:""}
data modify entity @s Item.components."minecraft:lore" append value [{text:"Can damage any Ward",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Right click on Ward to use)",italic:false,color:"dark_gray"}]
