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
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.875f,1.0f,0.05f]}}

## TITLE
$summon minecraft:text_display ^0.4375 ^0.825 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Title","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"   Hazard   ",color:white,bold:true,underlined:true}]}

#=============================================================================================================

$summon minecraft:text_display ^0.36 ^0.14 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","HazardLabels","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"  ",color:"white"},{text:"\nLevel 1",color:"$(color_a)"},{text:"\nLevel 2",color:"$(color_a)"},{text:"\nLevel 3",color:"$(color_a)"}\
,{text:"\nLevel 4",color:"$(color_a)"},{text:"\nRandom",color:"$(color_a)"},{text:"\nEcho Level",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.67 ^0.14 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","HazardScores","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"  ",color:"white"},{text:"\n3",color:"$(color_a)"},{text:"+0",color:"$(color_a)"}\
,{text:"\n3",color:"$(color_a)"},{text:"+0",color:"$(color_a)"},{text:"\n3",color:"$(color_a)"}\
,{text:"+0",color:"$(color_a)"},{text:"\n3",color:"$(color_a)"},{text:"+0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"},{text:"\n0",color:"$(color_a)"}]}

#=============================================================================================================
# Assign scores
scoreboard players operation @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] hub.entity.deck_analyzer_id = @s hub.deck_analyzer_id
# Remove tags
tag @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] remove NewDeckAnalyzerDisplay
