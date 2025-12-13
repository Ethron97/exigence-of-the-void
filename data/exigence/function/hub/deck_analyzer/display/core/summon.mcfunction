# Summon display entities

## CONSTRAINTS
#   AS deck analyzer marker
#   AT location (bottom left of the background/section)

## INPUT
#   FLOAT[] Rotation
#   STR color_a
#   STR color_b

#=============================================================================================================

## BACKGROUND
$summon block_display ^ ^ ^-0.025 {Rotation:$(Rotation),billboard:"fixed",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Background","NewBlockDisplay"]\
,brightness:{sky:6,block:6},block_state:{Name:"minecraft:light_gray_terracotta"},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.125f,1.625f,0.05f]}}

## TITLE
$summon minecraft:text_display ^0.5625 ^1.45 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Title","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"  Core Effects  ",color:white,bold:true,underlined:true}]}

#=============================================================================================================

$summon minecraft:text_display ^0.44 ^0.38 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","CoreLabels","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"  ",color:"white"},{text:"\n🍒 Berry",color:"$(color_a)"},{text:"\n🍪 Treasure",color:"$(color_a)"},{text:"\n🔥 Ember",color:"$(color_a)"}\
,{text:"\nHeighten",color:"$(color_a)"},{text:"\n\nShop Slots*",color:"$(color_a)"},{text:"\nEcho Modifier",color:"$(color_a)"}\
,{text:"\nLevel 1 Keys",color:"$(color_a)"},{text:"\nLevel 2 Keys",color:"$(color_a)"},{text:"\nLevel 3 Keys",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.94 ^0.38 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","CoreScores","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"  ",color:"white"},{text:"\n0",color:"$(color_a)"},{text:"\n0",color:"$(color_a)"},{text:"\n0",color:"$(color_a)"},{text:"\n0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"},{text:"\n0",color:"$(color_a)"},{text:"\n0",color:"$(color_a)"},{text:"\n0",color:"$(color_a)"},{text:"\n0",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.5625 ^0.125 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},line_width:150,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.3f,0.3f,0.3f]}\
,text:[{text:"*Number of card options available in card shop",color:"$(color_a)"}]}

#=============================================================================================================

# Update displays


# Assign scores
scoreboard players operation @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] hub.entity.deck_analyzer_id = @s hub.deck_analyzer_id

# Remove tags
tag @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] remove NewDeckAnalyzerDisplay
