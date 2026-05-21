# Call at position
#   With {card_name:""}, simple name to match the directory

#$say Summon card $(card_name)

$data modify storage exigence:colors card_name set value $(card_name)

# Get costs of card
#   Puts into full_cost and full_cost_2 (which has RPAD for namesake)
function exigence:cards/get_cost with storage exigence:colors

## GET NORMAL COST
# Convert costs to strings for reference
function exigence:cards/get_cost_strings
# Get full cost for lore
data modify storage exigence:resources target set value 'full_cost'
data modify storage exigence:resources rpad set value {text:""}
function exigence:cards/set_full_cost_string with storage exigence:resources
data modify storage exigence:resources target set value 'full_cost_2'
data modify storage exigence:resources rpad set value {text:" "}
function exigence:cards/set_full_cost_string with storage exigence:resources

# Copy lore cost into colors data
data modify storage exigence:colors lore_cost set from storage exigence:resources full_cost

scoreboard players set #CostReduced game.resources 0
# If this was summoned from SPELLBIND, and Spellbook modifier active, modify the costs
execute if score #spellbinding Temp matches 1 if score mod.spellbook game.modifiers matches 1 run function exigence:cards/get_cost_spellbind_string

# If spellbinding, also copy that card cost name into name cost
data modify storage exigence:colors name_cost set value {text:""}
execute if score #spellbinding Temp matches 1 run data modify storage exigence:colors name_cost set from storage exigence:resources full_cost_2
#data modify storage exigence:colors name_cost set from storage exigence:resources full_cost_2

# Summon blank card
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["CardSummon","NCS"]}

# Apply data to the card
$execute as @e[type=minecraft:item,tag=NCS,distance=..1] run function exigence:cards/$(card_name)/summon with storage exigence:colors
