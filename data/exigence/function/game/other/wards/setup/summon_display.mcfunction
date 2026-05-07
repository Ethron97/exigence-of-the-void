# Create a single generic item display

## CONSTRAINTS
#   AT position

#====================================================================================================

execute if score toggle.wards debug matches 1 if score debug.level debug matches 4.. run say (D4) Summon ward display

summon minecraft:item_display ~ ~0.5 ~ {Tags:["NewCrystalDisplay","CrystalDisplay"],interpolation_duration:20\
,billboard:"fixed",item:{id:"minecraft:lime_stained_glass",count:1}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
