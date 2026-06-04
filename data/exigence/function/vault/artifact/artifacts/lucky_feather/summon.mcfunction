$data merge entity @s {Item:{id:"minecraft:feather",count:1,components:{"minecraft:custom_name":[{text:"✨",italic:false,bold:true,color:"white"},\
{text:" Enchanted Feather ",italic:false,bold:true,color:"$(artifact)"},{text:"✨",italic:false,bold:true,color:"white"}]\
,"minecraft:lore":[[$(legendary_stars),{text:"Passive Artifact ",italic:false,color:"white"},{text:"(Soulbound)",color:"dark_gray",italic:false}]\
,{text:""}\
,[{text:"-100% ",italic:false,color:"$(effect)"},{text:"knockback resistance",italic:false,color:"gray"}]\
,[{text:"-50% ",italic:false,color:"$(effect)"},{text:"fall damage",italic:false,color:"gray"}]\
,[{text:"+5 ",italic:false,color:"$(effect)"},{text:"safe fall distance",italic:false,color:"gray"}]\
,{text:""}\
,[{text:"Player Passive",color:"dark_gray"}]\
],"minecraft:custom_data":{item_name:"lucky_feather",is_soulbound:true}}}}

#data modify entity @s Item.components."minecraft:attribute_modifiers" set value [{type:'minecraft:generic.gravity',uuid:[1,27,3,4],name:'Gravity',amount:-0.4,operation:'add_multiplied_base'}],show_in_tooltip:true}
