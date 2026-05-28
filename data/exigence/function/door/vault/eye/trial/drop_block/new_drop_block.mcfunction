# Resign a block to be dropped
# Summon glowing red outline of block in one second

## CONSTRAINTS
#   AT block to be dropped

#====================================================================================================

# Summon block display
execute align xyz run summon block_display ~0.5 ~0.51 ~0.5 {Glowing:1b,Tags:["NewDropBlock","DropBlock"],block_state:{Name:"glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0.5f,-0.5f],scale:[1.0f,0.01f,1.0f]}}

# Add to hazard for red
team join Hazard @e[type=minecraft:block_display,tag=NewDropBlock,distance=..2]
