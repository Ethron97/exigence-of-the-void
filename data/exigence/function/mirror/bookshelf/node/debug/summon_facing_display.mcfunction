# Summon display saying which direction we are facing

## CONSTRAINTS
#   AS/AT menace node

#====================================================================================================

execute if entity @s[tag=FacingEast] run summon minecraft:text_display ~ ~1.06 ~ {Tags:["BookshelfFacingDisplay"],\
text:[{text:"FacingEast",color:"yellow"}],billboard:"center",alignment:"left",see_through:true}

execute if entity @s[tag=FacingWest] run summon minecraft:text_display ~ ~1.06 ~ {Tags:["BookshelfFacingDisplay"],\
text:[{text:"FacingWest",color:"yellow"}],billboard:"center",alignment:"left",see_through:true}

execute if entity @s[tag=FacingNorth] run summon minecraft:text_display ~ ~1.06 ~ {Tags:["BookshelfFacingDisplay"],\
text:[{text:"FacingNorth",color:"yellow"}],billboard:"center",alignment:"left",see_through:true}

execute if entity @s[tag=FacingSouth] run summon minecraft:text_display ~ ~1.06 ~ {Tags:["BookshelfFacingDisplay"],\
text:[{text:"FacingSouth",color:"yellow"}],billboard:"center",alignment:"left",see_through:true}
