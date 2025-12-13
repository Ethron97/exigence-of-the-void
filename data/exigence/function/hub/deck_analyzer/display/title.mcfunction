# Summon title display

## CONSTRAINTS
#   AT position

## INPUT
#   FLOAT[] Rotation

#=============================================================================================================

$summon minecraft:text_display ^ ^ ^0.01 {Rotation:$(Rotation),billboard:"fixed",alignment:"left",Tags:["NewDeckAnalyzerDisplay","DeckAnalyzerDisplay","Title","NewTextDisplay"],\
background:1,brightness:{sky:9,block:9},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.7f,0.7f,0.7f]}\
,text:[{text:"Deck Analysis",color:white,bold:true}]}