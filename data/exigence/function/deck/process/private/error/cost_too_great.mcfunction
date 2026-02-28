# Called by analyze_card

## CONSTRAINTS
#   AS player analyzing deck

## INPUT
#   STR display_name
#   STR resource (eg "green", "red", "aqua")
#   STR resource_color

#====================================================================================================

$execute if score #rarity deck.process_card matches 1 run function exigence:deck/process/private/error/cost_too_great_m {display_name:'$(display_name)',resource:'$(resource)',resource_color:'$(resource_color)',rarity_color:"dark_aqua"}
$execute if score #rarity deck.process_card matches 2 run function exigence:deck/process/private/error/cost_too_great_m {display_name:'$(display_name)',resource:'$(resource)',resource_color:'$(resource_color)',rarity_color:"green"}
$execute if score #rarity deck.process_card matches 3 run function exigence:deck/process/private/error/cost_too_great_m {display_name:'$(display_name)',resource:'$(resource)',resource_color:'$(resource_color)',rarity_color:"blue"}
$execute if score #rarity deck.process_card matches 4 run function exigence:deck/process/private/error/cost_too_great_m {display_name:'$(display_name)',resource:'$(resource)',resource_color:'$(resource_color)',rarity_color:"light_purple"}
