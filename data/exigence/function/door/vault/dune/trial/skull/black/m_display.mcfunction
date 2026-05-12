# Macro to summon item display with rotation

## CONSTRAINTS
#   AT location

## INPUT
#   Float[] Rotation

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Summon wither skull display

$summon minecraft:item_display ~ ~1.8 ~ {Glowing:1b,teleport_duration:1,Tags:["NewSkull","Black","DuneSkull"],Rotation:$(Rotation),CustomName:{text:"ItemDisplay | DuneSkullBlack"}\
,item:{id:"minecraft:wither_skeleton_skull"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.25f,0f],scale:[1.0f,1.0f,1.0f]}}
