# Setup clock expire display outside of the item shop

#====================================================================================================

execute in exigence:hub run summon minecraft:item_display -22.98 202.5 2.50 {Tags:["ExpireDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":{strings:["clock"]}}},Rotation:[-90.0f,0.0f]}

execute in exigence:hub run summon minecraft:text_display -22.98 202.0 2.50 {Tags:["ExpireDisplay"]\
,text:[{text:"Test"}],Rotation:[-90.0f,0.0f],background:1,billboard:"fixed",alignment:"center"}
