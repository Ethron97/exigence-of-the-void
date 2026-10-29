# Load the ward health displays

## CONSTRAINTS
#   AS profile node
#   AT position

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Load candle progress

summon minecraft:item_display ~ ~0.12 ~-0.025 {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["CandleProgress","PredungeonDisplay","Spark"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CandleProgress1"}\
,item:{id:"minecraft:glow_ink_sac",count:1,components:{"minecraft:custom_model_data":{strings:["spark"]}}}}

summon minecraft:item_display ~0.3 ~ ~-0.025 {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["CandleProgress","PredungeonDisplay","1"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CandleProgress1"}\
,item:{id:"minecraft:gray_candle",count:1}}

summon minecraft:item_display ~0.15 ~-0.05 ~-0.025 {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["CandleProgress","PredungeonDisplay","2"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CandleProgress2"}\
,item:{id:"minecraft:gray_candle",count:1}}

summon minecraft:item_display ~ ~-0.09 ~-0.025 {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["CandleProgress","PredungeonDisplay","3"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CandleProgress3"}\
,item:{id:"minecraft:gray_candle",count:1}}

summon minecraft:item_display ~-0.15 ~-0.05 ~-0.025 {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["CandleProgress","PredungeonDisplay","4"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CandleProgress4"}\
,item:{id:"minecraft:gray_candle",count:1}}

summon minecraft:item_display ~-0.3 ~ ~-0.025 {Rotation:[0.0f,0.0f],billboard:"fixed"\
,Tags:["CandleProgress","PredungeonDisplay","5"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.16f,0.16f,0.16f]},CustomName:{text:"ItemDisplay | CandleProgress5"}\
,item:{id:"minecraft:gray_candle",count:1}}

#====================================================================================================

# Change candle color if that many is lit
execute if score @s profile.story.puzzle_candles matches 10.. as @e[type=minecraft:item_display,tag=CandleProgress,tag=1,distance=..3] run data modify entity @s item.id set value "minecraft:light_blue_candle"
execute if score @s profile.story.puzzle_candles matches 20.. as @e[type=minecraft:item_display,tag=CandleProgress,tag=2,distance=..3] run data modify entity @s item.id set value "minecraft:light_blue_candle"
execute if score @s profile.story.puzzle_candles matches 30.. as @e[type=minecraft:item_display,tag=CandleProgress,tag=3,distance=..3] run data modify entity @s item.id set value "minecraft:light_blue_candle"
execute if score @s profile.story.puzzle_candles matches 40.. as @e[type=minecraft:item_display,tag=CandleProgress,tag=4,distance=..3] run data modify entity @s item.id set value "minecraft:light_blue_candle"
execute if score @s profile.story.puzzle_candles matches 50.. as @e[type=minecraft:item_display,tag=CandleProgress,tag=5,distance=..3] run data modify entity @s item.id set value "minecraft:light_blue_candle"

# little flame text
execute if score @s profile.story.puzzle_candles matches 10.. at @e[type=minecraft:item_display,tag=CandleProgress,tag=1,distance=..3] run summon text_display ~ ~0.04 ~-0.008 \
{alignment:"center",background:1,line_width:150,Rotation:[180.0f,0.0f],Tags:["PredungeonDisplay"],billboard:'fixed',text:[{text:"🔥",color:"aqua"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score @s profile.story.puzzle_candles matches 20.. as @e[type=minecraft:item_display,tag=CandleProgress,tag=2,distance=..3] run summon text_display ~ ~0.04 ~-0.008 \
{alignment:"center",background:1,line_width:150,Rotation:[180.0f,0.0f],Tags:["PredungeonDisplay"],billboard:'fixed',text:[{text:"🔥",color:"aqua"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score @s profile.story.puzzle_candles matches 30.. as @e[type=minecraft:item_display,tag=CandleProgress,tag=3,distance=..3] run summon text_display ~ ~0.04 ~-0.008 \
{alignment:"center",background:1,line_width:150,Rotation:[180.0f,0.0f],Tags:["PredungeonDisplay"],billboard:'fixed',text:[{text:"🔥",color:"aqua"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score @s profile.story.puzzle_candles matches 40.. as @e[type=minecraft:item_display,tag=CandleProgress,tag=4,distance=..3] run summon text_display ~ ~0.04 ~-0.008 \
{alignment:"center",background:1,line_width:150,Rotation:[180.0f,0.0f],Tags:["PredungeonDisplay"],billboard:'fixed',text:[{text:"🔥",color:"aqua"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score @s profile.story.puzzle_candles matches 50.. as @e[type=minecraft:item_display,tag=CandleProgress,tag=5,distance=..3] run summon text_display ~ ~0.04 ~-0.008 \
{alignment:"center",background:1,line_width:150,Rotation:[180.0f,0.0f],Tags:["PredungeonDisplay"],billboard:'fixed',text:[{text:"🔥",color:"aqua"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
