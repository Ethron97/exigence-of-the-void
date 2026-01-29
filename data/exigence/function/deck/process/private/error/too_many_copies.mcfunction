# called by analyze_card

## CONSTRAINTS
#   AS player analyzing deck

## INPUT
#   STR display_name

#====================================================================================================

$execute if score #rarity deck.process_card matches 1 run function exigence:deck/process/private/error/too_many_copies_m {display_name:'$(display_name)',rarity_color:"dark_aqua"}
$execute if score #rarity deck.process_card matches 2 run function exigence:deck/process/private/error/too_many_copies_m {display_name:'$(display_name)',rarity_color:"green"}
$execute if score #rarity deck.process_card matches 3 run function exigence:deck/process/private/error/too_many_copies_m {display_name:'$(display_name)',rarity_color:"blue"}
$execute if score #rarity deck.process_card matches 4 run function exigence:deck/process/private/error/too_many_copies_m {display_name:'$(display_name)',rarity_color:"light_purple"}
