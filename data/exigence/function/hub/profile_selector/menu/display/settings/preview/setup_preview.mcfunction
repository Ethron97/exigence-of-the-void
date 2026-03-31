# Setup the required preview entities, for HUD related settings

## CONSTRAINTS
#   AS/AT profile selector node

## INPUT
#   exigence:temp INT profile_selector_id

#====================================================================================================

# Frame
summon minecraft:item_display ~ ~1 ~ {brightness:{block:13,sky:13},Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["PreviewFrame","NewDisplay"],\
item:{id:"minecraft:gray_stained_glass_pane",count:1},CustomName:{text:"ItemDisplay | PreviewFrame"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[1.8f,1.5f,0.5f]}}
# Frame background
summon minecraft:item_display ~0.01 ~1 ~ {brightness:{block:13,sky:13},Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["PreviewBackground","NewDisplay"],\
item:{id:"minecraft:black_concrete",count:1},CustomName:{text:"ItemDisplay | PreviewBackground"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[1.75f,1.45f,0.01f]}}

# Preview title
summon minecraft:text_display ~ ~1.8 ~ {brightness:{block:11,sky:11},Rotation:[90,0],billboard:"fixed",alignment:"center",Tags:["PreviewTitle","NewDisplay"]\
,text:{text:"Settings Preview"},background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.6f,0.6f,0.6f]}}

# Preview foopter (not to scale)
summon minecraft:text_display ~ ~0.19 ~ {brightness:{block:11,sky:11},Rotation:[90,0],billboard:"fixed",alignment:"center",Tags:["PreviewFooter","NewDisplay"]\
,text:{text:"(Not to scale)",color:"gray"},background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.2f,0.2f,0.2f]}}

# Deck bossbar
summon minecraft:text_display ~ ~1.6 ~ {brightness:{block:11,sky:11},Rotation:[90,0],billboard:"fixed",alignment:"center",Tags:["PreviewTitle","NewDisplay"]\
,background:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.3f,0.3f,0.3f]}\
,text:[{text:"Deck (7",color:"white"},{text:"/",color:"gray"},{text:"10): [ ▌▌▌▌▌ ▌▌",color:"white"},{text:"▌▌▌ ",color:"dark_gray"},{text:"]",color:"white"}]}

# Crosshair
summon minecraft:item_display ~ ~1.0 ~0.01 {brightness:{block:13,sky:13},Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["PreviewCrosshair","NewDisplay"],\
item:{id:"minecraft:sunflower",count:1,components:{"minecraft:custom_model_data":{strings:["crosshair"]}}},CustomName:{text:"ItemDisplay | PreviewCrosshair"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.01f]}}

# Player hud
summon minecraft:item_display ~ ~0.45 ~ {brightness:{block:13,sky:13},Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["PreviewHud","NewDisplay"],\
item:{id:"minecraft:sunflower",count:1,components:{"minecraft:custom_model_data":{strings:["player_hud"]}}},CustomName:{text:"ItemDisplay | PreviewHud"}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[1.0f,1.0f,0.01f]}}

# Give all new item displays selector score
execute as @e[tag=NewDisplay,distance=..16] store result score @s hub.entity.profile_selector_id run data get storage exigence:temp profile_selector_id
tag @e[tag=NewDisplay,distance=..16] remove NewDisplay
