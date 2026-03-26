$data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Far Step ",italic:false,bold:true,color:"$(legendary)"},{text:"✨",italic:false,bold:true,color:"white"}]\
,"minecraft:lore":[[$(legendary_stars),{text:"Transient",italic:false,color:"white"}]\
,{text:""}\
,[{text:"While ",italic:false,color:"gray"},{text:"Far Stepping",italic:false,color:"$(effect)"},{text:", use to teleport",italic:false,color:"gray"}]\
,[{text:"to a nearby node on your level",italic:false,color:"gray"}]\
,[{text:"(Right click to use)",color:"dark_gray"}]\
,[{text:"(Hold to preview node)",color:"dark_gray"}]\
],"minecraft:custom_data":{item_name:"item_far_step",is_soulbound:true}\
,"minecraft:custom_model_data":{strings:["item_far_step"]}}}}
#data modify entity @s Item.components."minecraft:use_cooldown" set value {seconds:1,cooldown_group:"exigence:far_step"}
