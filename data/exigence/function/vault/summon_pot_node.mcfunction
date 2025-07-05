# Summon a node that will generate a random pot on vault setup
# /function exigence:vault/summon_pot_node {vault_name:""}

# Called by player at location of where to put the node

# Summon marker template
function exigence:game/new_marker

tag @e[type=minecraft:marker,tag=NewMarker] add PotMarker
$tag @e[type=minecraft:marker,tag=NewMarker] add $(vault_name)

execute if data storage exigence:debug {vault:1} as @e[type=minecraft:marker,tag=NewMarker] at @s positioned ~-.5 ~ ~-.5 run function exigence:vault/debug/summon_pot_display

# Remove local tag
tag @e[type=minecraft:marker,tag=NewMarker] remove NewMarker
