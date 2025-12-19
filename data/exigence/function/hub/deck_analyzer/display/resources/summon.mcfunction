# Summon display entities

## CONSTRAINTS
#   AS deck analyzer marker
#   AT location (bottom left of the background/section)

## INPUT
#   FLOAT[] Rotation 

#=============================================================================================================

## BACKGROUND
$summon block_display ^ ^ ^-0.025 {Rotation:$(Rotation),billboard:"fixed",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Background","NewBlockDisplay"]\
,brightness:{sky:6,block:6},block_state:{Name:"minecraft:oxidized_copper"},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.375f,0.75f,0.05f]}}

## TITLE
$summon minecraft:text_display ^0.6875 ^0.575 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Title","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"      Resources      ",color:white,bold:true,underlined:true}]}

#=============================================================================================================

$summon minecraft:text_display ^0.36 ^0.43 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"Consuming:",color:"$(color_b)"}]}

$summon minecraft:text_display ^0.3 ^0.125 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","ResourceLabels","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"  ",color:"white"}\
,{text:"\n❂ Green",color:"$(color_a)"}\
,{text:"\n❂ Red",color:"$(color_a)"}\
,{text:"\n❂ Aqua",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.6 ^0.125 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","ResourceScores","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"  ",color:"white"}\
,{text:"\n",color:"#008700"}\
,{text:"\n",color:"#910000"}\
,{text:"\n",color:"#3FB5B5"}]}

#=============================================================================================================
# Pie chart item displays
$summon item_display ^1.0 ^0.3 ^0.027 {Rotation:$(Rotation),billboard:"fixed",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","PieGreen","NewItemDisplay"],brightness:{sky:12,block:12}\
,item:{id:"minecraft:pumpkin_pie",count:1,components:{"minecraft:custom_model_data":{strings:["pie_green_000"]}}}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

$summon item_display ^1.0 ^0.3 ^0.028 {Rotation:$(Rotation),billboard:"fixed",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","PieRed","NewItemDisplay"],brightness:{sky:12,block:12}\
,item:{id:"minecraft:pumpkin_pie",count:1,components:{"minecraft:custom_model_data":{strings:["pie_red_000"]}}}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

$summon item_display ^1.0 ^0.3 ^0.029 {Rotation:$(Rotation),billboard:"fixed",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","PieAqua","NewItemDisplay"],brightness:{sky:12,block:12}\
,item:{id:"minecraft:pumpkin_pie",count:1,components:{"minecraft:custom_model_data":{strings:["pie_aqua_000"]}}}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

#=============================================================================================================
# Assign scores
scoreboard players operation @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] hub.entity.deck_analyzer_id = @s hub.deck_analyzer_id
# Remove tags
tag @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] remove NewDeckAnalyzerDisplay
