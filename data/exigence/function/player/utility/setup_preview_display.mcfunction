# Called on game_on
#   Assume all existing are killed on game reset before re-calling this
# Creates entity block displays, one for each player, for the purpose of previewing where you will be teleporting

## CONSTRAINTS
#   AS player

#=============================================================================================================

# DEBUG
say Setting up item preview display

summon minecraft:block_display -384 37.0 -116 {Tags:["ItemPreview","NewItemPreview"],block_state:{Name:"glass"}}

# Assign playerid to the glass block
scoreboard players operation @e[type=block_display,tag=NewItemPreview] game.entity.profile_id = @s profile.profile_id

# Team
execute as @e[type=block_display,tag=NewItemPreview] run team join Yellow @s

# Remove local tag
tag @e[type=block_display,tag=NewItemPreview] remove NewItemPreview
