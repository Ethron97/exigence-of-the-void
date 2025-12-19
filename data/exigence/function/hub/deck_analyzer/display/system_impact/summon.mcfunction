# Summon display entities

## CONSTRAINTS
#   AS deck analyzer marker
#   AT location (bottom left of the background/section)

## INPUT
#   FLOAT[] Rotation 

#=============================================================================================================

## BACKGROUND
$summon block_display ^ ^ ^-0.025 {Rotation:$(Rotation),Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Background","NewBlockDisplay"]\
,billboard:"fixed",brightness:{sky:6,block:6},block_state:{Name:"minecraft:oxidized_copper"},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[2.25f,1.625f,0.05f]}}

## TITLE
$summon minecraft:text_display ^1.125 ^1.45 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Title","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,text:[{text:"       System Impact Scores       ",color:white,bold:true,underlined:true}]}

#=============================================================================================================

# LABELS
$summon minecraft:text_display ^0.4 ^1.25 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Treasure","SystemLabels","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:"            "},{text:"\nTreasure",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.4 ^1.0625 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Ember","SystemLabels","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:"            "},{text:"\nEmber",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.4 ^0.875 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Deck","SystemLabels","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:"            "},{text:"\nDeck",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.4 ^0.6875 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Movement","SystemLabels","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:"            "},{text:"\nMovement",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.4 ^0.5 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Survival","SystemLabels","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:"            "},{text:"\nSurvival",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.4 ^0.3125 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Utility","SystemLabels","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:"            "},{text:"\nUtility",color:"$(color_a)"}]}

$summon minecraft:text_display ^0.4 ^0.125 ^0.027 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Other","SystemLabels","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}\
,text:[{text:"            "},{text:"\nOther",color:"$(color_a)"}]}

# SCORE ACTUAL
$summon minecraft:text_display ^0.8125 ^1.25 ^0.04 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Treasure","SystemScores","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,teleport_duration:10,text:[{text:""},{text:"\n0.0",color:"$(color_b)"}]}

$summon minecraft:text_display ^0.8125 ^1.0625 ^0.04 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Ember","SystemScores","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,teleport_duration:10,text:[{text:""},{text:"\n0.0",color:"$(color_b)"}]}

$summon minecraft:text_display ^0.8125 ^0.875 ^0.04 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Deck","SystemScores","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,teleport_duration:10,text:[{text:""},{text:"\n0.0",color:"$(color_b)"}]}

$summon minecraft:text_display ^0.8125 ^0.6875 ^0.04 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Movement","SystemScores","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,teleport_duration:10,text:[{text:""},{text:"\n0.0",color:"$(color_b)"}]}

$summon minecraft:text_display ^0.8125 ^0.5 ^0.04 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Survival","SystemScores","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,teleport_duration:10,text:[{text:""},{text:"\n0.0",color:"$(color_b)"}]}

$summon minecraft:text_display ^0.8125 ^0.3125 ^0.04 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Utility","SystemScores","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,teleport_duration:10,text:[{text:""},{text:"\n0.0",color:"$(color_b)"}]}

$summon minecraft:text_display ^0.8125 ^0.125 ^0.04 {Rotation:$(Rotation),billboard:"fixed",alignment:"right",Tags:["Other","SystemScores","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.4f,0.4f,0.4f]}\
,teleport_duration:10,text:[{text:""},{text:"\n0.0",color:"$(color_b)"}]}

# BAR
$summon block_display ^0.8125 ^1.25 ^0.03 {Rotation:$(Rotation),Tags:["Treasure","BarChart","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,interpolation_duration:10,billboard:"fixed",brightness:{sky:12,block:12},block_state:{Name:"minecraft:yellow_concrete",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.125f,0.01f]}}

$summon block_display ^0.8125 ^1.0625 ^0.03 {Rotation:$(Rotation),Tags:["Ember","BarChart","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,interpolation_duration:10,billboard:"fixed",brightness:{sky:12,block:12},block_state:{Name:"minecraft:yellow_concrete",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.125f,0.01f]}}

$summon block_display ^0.8125 ^0.875 ^0.03 {Rotation:$(Rotation),Tags:["Deck","BarChart","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,interpolation_duration:10,billboard:"fixed",brightness:{sky:12,block:12},block_state:{Name:"minecraft:yellow_concrete",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.125f,0.01f]}}

$summon block_display ^0.8125 ^0.6875 ^0.03 {Rotation:$(Rotation),Tags:["Movement","BarChart","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,interpolation_duration:10,billboard:"fixed",brightness:{sky:12,block:12},block_state:{Name:"minecraft:yellow_concrete",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.125f,0.01f]}}

$summon block_display ^0.8125 ^0.5 ^0.03 {Rotation:$(Rotation),Tags:["Survival","BarChart","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,interpolation_duration:10,billboard:"fixed",brightness:{sky:12,block:12},block_state:{Name:"minecraft:yellow_concrete",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.125f,0.01f]}}

$summon block_display ^0.8125 ^0.3125 ^0.03 {Rotation:$(Rotation),Tags:["Utility","BarChart","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,interpolation_duration:10,billboard:"fixed",brightness:{sky:12,block:12},block_state:{Name:"minecraft:yellow_concrete",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.125f,0.01f]}}

$summon block_display ^0.8125 ^0.125 ^0.03 {Rotation:$(Rotation),Tags:["Other","BarChart","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,interpolation_duration:10,billboard:"fixed",brightness:{sky:12,block:12},block_state:{Name:"minecraft:yellow_concrete",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.0f,0.125f,0.01f]}}

# BAR BACKGROUNDS
$summon block_display ^0.78125 ^1.25 ^0.025 {Rotation:$(Rotation),Tags:["BarChartBack","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,billboard:"fixed",brightness:{sky:9,block:9},block_state:{Name:"minecraft:exposed_copper_grate",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.03125f,0.0f],scale:[1.375f,0.1875f,0.01f]}}

$summon block_display ^0.78125 ^1.0625 ^0.025 {Rotation:$(Rotation),Tags:["BarChartBack","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,billboard:"fixed",brightness:{sky:9,block:9},block_state:{Name:"minecraft:exposed_copper_grate",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.03125f,0.0f],scale:[1.375f,0.1875f,0.01f]}}

$summon block_display ^0.78125 ^0.875 ^0.025 {Rotation:$(Rotation),Tags:["BarChartBack","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,billboard:"fixed",brightness:{sky:9,block:9},block_state:{Name:"minecraft:exposed_copper_grate",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.03125f,0.0f],scale:[1.375f,0.1875f,0.01f]}}

$summon block_display ^0.78125 ^0.6875 ^0.025 {Rotation:$(Rotation),Tags:["BarChartBack","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,billboard:"fixed",brightness:{sky:9,block:9},block_state:{Name:"minecraft:exposed_copper_grate",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.03125f,0.0f],scale:[1.375f,0.1875f,0.01f]}}

$summon block_display ^0.78125 ^0.5 ^0.025 {Rotation:$(Rotation),Tags:["BarChartBack","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,billboard:"fixed",brightness:{sky:9,block:9},block_state:{Name:"minecraft:exposed_copper_grate",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.03125f,0.0f],scale:[1.375f,0.1875f,0.01f]}}

$summon block_display ^0.78125 ^0.3125 ^0.025 {Rotation:$(Rotation),Tags:["BarChartBack","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,billboard:"fixed",brightness:{sky:9,block:9},block_state:{Name:"minecraft:exposed_copper_grate",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.03125f,0.0f],scale:[1.375f,0.1875f,0.01f]}}

$summon block_display ^0.78125 ^0.125 ^0.025 {Rotation:$(Rotation),Tags:["BarChartBack","NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","NewBlockDisplay"]\
,billboard:"fixed",brightness:{sky:9,block:9},block_state:{Name:"minecraft:exposed_copper_grate",Properties:{axis:x}},\
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,-0.03125f,0.0f],scale:[1.375f,0.1875f,0.01f]}}

#=============================================================================================================
# Assign scores
scoreboard players operation @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] hub.entity.deck_analyzer_id = @s hub.deck_analyzer_id
# Remove tags
tag @e[distance=..7,type=#exigence:display,tag=NewDeckAnalyzerDisplay] remove NewDeckAnalyzerDisplay
