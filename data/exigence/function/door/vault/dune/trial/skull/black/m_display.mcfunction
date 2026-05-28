# Macro to summon item display with rotation

## CONSTRAINTS
#   AT location

## INPUT
#   Float[] Rotation

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Summon wither skull display

$summon minecraft:item_display ~ ~0.3 ~ {teleport_duration:1,Tags:["NewSkull","Black","DuneSkull"],Rotation:$(Rotation),CustomName:{text:"ItemDisplay | DuneSkullBlack"}\
,item:{id:"minecraft:wither_skeleton_skull"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.25f,0f],scale:[1.0f,1.0f,1.0f]}}

# Data (removes local tag)
execute as @e[type=minecraft:item_display,tag=NewSkull,distance=..1,limit=1] run function exigence:door/vault/dune/trial/skull/black/new_data