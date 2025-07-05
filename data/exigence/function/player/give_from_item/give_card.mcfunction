# Summon card item and put item into player inventory
#   DOES NOT STACK...

## CONSTRAINTS
#   AS player to give

## INPUT
#   STR card_name

#=========================================================================================================

# Summon item
$execute positioned -384.5 37.00 -116.5 run function exigence:cards/summon_card {card_name:$(card_name)}

# Give tag
tag @e[type=minecraft:item,tag=NCS] add ForceGive

$data modify storage exigence:give card_name set value $(card_name)

# Give to player
$function exigence:player/give_from_item/give {type:'hotbar',index:0,card_name:$(card_name)}

# Kill item
kill @e[type=minecraft:item,tag=NCS,tag=ForceGive]
