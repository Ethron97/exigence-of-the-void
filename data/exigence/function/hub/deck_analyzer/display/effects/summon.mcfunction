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
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.125f,1.875f,0.05f]}}

## TITLE
$summon minecraft:text_display ^0.5625 ^1.70 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Title","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:" Status Effects ",color:white,bold:true,underlined:true}]}

#=============================================================================================================

$summon minecraft:text_display ^0.43 ^0.23 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","EffectLabels","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:" ",color:"white"}\
,{text:"\nBeastsense",color:"$(color_a)"}\
,{text:"\nInvisibility",color:"$(color_a)"}\
,{text:"\nRegeneration",color:"$(color_a)"}\
,{text:"\n"}\
,{text:"\nGlimmer",color:"$(color_a)"}\
,{text:"\nCirculation",color:"$(color_a)"}\
,{text:"\n"}\
,{text:"\nClairvoyance",color:"$(color_a)"}\
,{text:"\n"}\
,{text:"\nFlicker",color:"$(color_a)"}\
,{text:"\n"}\
,{text:"\nJump Boost II",color:"$(color_a)"}\
,{text:"\nSpeed",color:"$(color_a)"}\
,{text:"\nSpeed II",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.95 ^0.23 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","EffectScores","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"     ",color:"white"}\
,{text:"\n",color:"$(color_a)"}\
,{text:"\n",color:"$(color_a)"}\
,{text:"\n",color:"$(color_a)"}\
,{text:"\n"}\
,{text:"\n",color:"$(color_a)"}\
,{text:"\n",color:"$(color_a)"}\
,{text:"\n"}\
,{text:"\n",color:"$(color_a)"}\
,{text:"\n"}\
,{text:"\n",color:"$(color_a)"}\
,{text:"\n"}\
,{text:"\n",color:"$(color_a)"}\
,{text:"\n",color:"$(color_a)"}\
,{text:"\n",color:"$(color_a)"}]}

#=============================================================================================================
# Assign scores
scoreboard players operation @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] hub.entity.deck_analyzer_id = @s hub.deck_analyzer_id
# Remove tags
tag @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] remove NewDeckAnalyzerDisplay
