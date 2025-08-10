# Makes this marker visible for debug

## CONSTRAINTS
#   AS marker

#=============================================================================================================

tag @s add Showing

execute at @s run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:green_concrete"},Glowing:1b,Tags:["TutorialMarkerGlow"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]}}

function exigence:tutorial/marker/private/update_debug_color

# Show ID in text display
execute store result storage exigence:temp id int 1 run scoreboard players get @s TutorialMarkerID
execute at @s run function exigence:tutorial/marker/private/summon_id_display with storage exigence:temp
