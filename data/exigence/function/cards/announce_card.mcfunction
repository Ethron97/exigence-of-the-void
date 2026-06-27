# Triggers when you pick up any echo OR key

## CONSTRAINTS
#   AS card

#====================================================================================================

tellraw @a[tag=ActivePlayer] [{text:"[",color:"white"}\
,{nbt:"equipment.mainhand.components.'minecraft:custom_name'",source:"entity",entity:"@s",interpret:true\
,hover_event:{action:"show_text",value:[{nbt:"equipment.mainhand.components.'minecraft:custom_name'",source:"entity",entity:"@s",interpret:true},{text:"\n"},\
{nbt:"equipment.mainhand.components.'minecraft:lore'[]",source:"entity",entity:"@s",interpret:true,separator:'\n'}]}}\
,{text:"]",color:"white"}]

tellraw @a[tag=Predungeon] [{text:"[",color:"white"}\
,{nbt:"equipment.mainhand.components.'minecraft:custom_name'",source:"entity",entity:"@s",interpret:true\
,hover_event:{action:"show_text",value:[{nbt:"equipment.mainhand.components.'minecraft:custom_name'",source:"entity",entity:"@s",interpret:true},{text:"\n"},\
{nbt:"equipment.mainhand.components.'minecraft:lore'[]",source:"entity",entity:"@s",interpret:true,separator:'\n'}]}}\
,{text:"]",color:"white"}]