# Handle post-processing for INSTANT cards

## CONSTRAINTS
#   AS card (instant)

#====================================================================================================

function exigence:deck/play_instant with entity @s equipment.mainhand.components."minecraft:custom_data"
tag @s add Played
function exigence:cards/add_sidebar_display_instant