# Root load function

#====================================================================================================

#function exigence:misc/set_number_scores

scoreboard objectives add Version dummy

# Increase version number by 1
#   Player = "major version", must be changed manually
scoreboard players add 0.58 Version 1
tellraw @a [{text:">>>Loading Exigence v0.58",bold: false,italic: false,color: "light_purple"}]

# Recreate "full rarity star/color combos"
function exigence:misc/setup_functions/redo_lore_colors with storage exigence:colors

difficulty hard

# Initialize global settings from storage
function exigence:misc/setup_functions/initialize_global_settings
