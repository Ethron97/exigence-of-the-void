# Creates visual display for ember shop node

## CONSTRAINTS
#   AT location

#=============================================================================================================

execute at @s run summon block_display ~ ~ ~ {block_state:{Name:"minecraft:blue_concrete"},Tags:["EmberShopNodeDebug"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]}}
