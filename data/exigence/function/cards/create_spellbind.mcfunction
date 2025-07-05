# Creates spellbound card and adds it to active player inventories

## INPUT
#   STR card_name

#==========================================================================================================

# DEBUG
#say Creating spellbind card

# Summon card
scoreboard players set spellbinding Temp 1
$function exigence:cards/summon_card {card_name:$(card_name)}
scoreboard players set spellbinding Temp 0

# Apply spellbind data / force give
execute as @e[distance=..1,type=minecraft:item,tag=NCS,limit=1] run function exigence:cards/spellbind_data
