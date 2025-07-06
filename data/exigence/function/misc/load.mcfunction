#tellraw @a {text:">>>Loading Exigence",bold: false,italic: false,color: "light_purple"}

#function exigence:misc/set_number_scores

scoreboard objectives add Version dummy

# Increase version number by 1
#   Player = "major version", must be changed manually
scoreboard players add 0.43 Version 1
tellraw @a [{text:">>>Loading Exigence v0.43",bold: false,italic: false,color: "light_purple"}]

# Recreate "full rarity star/color combos"
function exigence:misc/setup_functions/redo_lore_colors with storage exigence:colors

# Reset room grace limits
function exigence:room/reset_grace_limits
