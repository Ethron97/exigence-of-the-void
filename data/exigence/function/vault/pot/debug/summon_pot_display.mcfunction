# Summon debug pot

## INPUT
#   INT pot_x
#   INT pot_y
#   INT pot_z

#====================================================================================================

$summon minecraft:block_display $(pot_x) $(pot_y) $(pot_z) {Tags:["PotDebugDisplay"],block_state:{Name:"minecraft:flower_pot"},Glowing:1b\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.0f,-0.5f],scale:[1.0f,1.0f,1.0f]}}
