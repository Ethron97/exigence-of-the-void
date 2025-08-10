# macro to summon dynamic display for TutorialMarkerID

## CONSTRAINTS
#   AT location

## INPUT
#   INT id

#=============================================================================================================

$summon minecraft:text_display ~ ~1 ~ {Tags:["TutorialMarkerID"],text:[{text:"ID: ",color:"gray"},{text:"$(id)",color:"green"}],billboard:"center",alignment:"left",see_through:true}
