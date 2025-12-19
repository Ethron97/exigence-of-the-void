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
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[2.25f,1.0f,0.05f]}}

## TITLE
$summon minecraft:text_display ^1.125 ^0.825 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Title","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"             Card Types             ",color:white,bold:true,underlined:true}]}

#=============================================================================================================

$summon minecraft:text_display ^0.3475 ^0.14 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","DeckLabelsA","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:" ",color:"white"}\
,{text:"\nTotal",color:"$(color_a)",bold:true}\
,{text:"\n"}\
,{text:"\nCommon",color:"$(color_a)",bold:false}\
,{text:"\nUncommon",color:"$(color_a)",bold:false}\
,{text:"\nRare",color:"$(color_a)",bold:false}\
,{text:"\nLegendary",color:"$(color_a)",bold:false}]}

$summon minecraft:text_display ^0.68 ^0.14 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","DeckScoresA","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"   ",color:"white"}\
,{text:"\n0",color:"$(color_a)",bold:true}\
,{text:"\n"}\
,{text:"\n0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"}]}

$summon minecraft:text_display ^1.15 ^0.14 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","DeckLabelsB","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:" ",color:"white"}\
,{text:"\nInstant",color:"$(color_a)"}\
,{text:"\nAscend",color:"$(color_a)"}\
,{text:"\nPersistent",color:"$(color_a)"}\
,{text:"\nVoid",color:"$(color_a)"}\
,{text:"\nRecycler",color:"$(color_a)"}\
,{text:"\nSpellbinder",color:"$(color_a)"}]}

$summon minecraft:text_display ^1.52 ^0.14 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","DeckScoresB","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:" ",color:"white"}\
,{text:"\n0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"}\
,{text:"\n0",color:"$(color_a)"}]}

$summon minecraft:text_display ^1.93 ^0.7 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"center",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","DeckLabels","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"Deck Time:",color:"$(color_b)",underlined:true}]}

$summon minecraft:text_display ^1.97 ^0.255 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","DeckTime","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.35f,0.35f,0.35f]}\
,text:[{text:""}\
,{text:"Default",color:"$(color_b)"}\
,{text:"\n00:00",color:"$(color_b)"}\
,{text:"\n"}\
,{text:"\nExpected",color:"$(color_b)"}\
,{text:"\n00:00",color:"$(color_b)"}]}

$summon minecraft:text_display ^1.93 ^0.14 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"center",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","DeckLabels","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},line_width:120,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.2f,0.2f,0.2f]}\
,text:[{text:"Factors in Spellbind and Recycle",color:"$(color_a)",italic:true}]}

#=============================================================================================================
# Assign scores
scoreboard players operation @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] hub.entity.deck_analyzer_id = @s hub.deck_analyzer_id
# Remove tags
tag @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] remove NewDeckAnalyzerDisplay
