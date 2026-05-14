# macro to summon dynamic display for tutorial.marker.id

## CONSTRAINTS
#   AT location

## INPUT
#   INT id

#====================================================================================================

$summon minecraft:text_display ~ ~1 ~ {Tags:["tutorial.marker.id"],text:[{text:"ID: ",color:"gray"},{text:"$(id)",color:"green"}],billboard:"center",alignment:"left",see_through:true}
