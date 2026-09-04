# Start player exalting when they win the campaign
#   Or log back in and the campaign is woning

## CONSTRAINTS
#   AS player

#====================================================================================================

# Main title
title @s title [{text:"Campaign Victory",color:"aqua"}]

# Add tag "Exalting" or something
tag @s add Exalting

# Set dead players to adventure
execute as @s[scores={dead=2},tag=ActivePlayer] run function exigence:player/death/revive

# Give all players resistance/fire resistance/regen so they can't die (for simplicity)
effect give @s resistance infinite 4 true
effect give @s regeneration infinite 4 true
effect give @s fire_resistance infinite 0 true
effect give @s saturation infinite 4 true

# Give exalting players an exit button which ends the run fully, as if they had just won
give @s minecraft:carrot_on_a_stick[custom_name=[{text:"Return to Hub",color:"aqua",italic:false}]\
,custom_data={item_name:'exit_exalting'},custom_model_data={strings:["exit_button_green"]}]