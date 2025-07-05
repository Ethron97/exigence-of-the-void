# Call at position
#   With {card_name:""}, simple name to match the directory

#$say Summon card $(card_name)

$data modify storage exigence:colors card_name set value $(card_name)

# Get costs of card
#   Puts into full_cost and full_cost_2 (which has RPAD for namesake)
function exigence:cards/get_cost with storage exigence:colors

# If this was summoned from SPELLBIND, and Spellbook modifier active, modify the costs
scoreboard players set #CostReduced Resources 0
execute if score spellbinding Temp matches 1 if score Spellbook Modifiers matches 1 run function exigence:vault/artifact/artifacts/enchanted_book/public/modify_costs

# Convert costs to strings for reference
function exigence:cards/get_cost_strings

# Copy lore cost into colors data
data modify storage exigence:colors lore_cost set from storage exigence:resources full_cost

# If spellbinding, also copy that card cost name into name cost
data modify storage exigence:colors name_cost set value {text:""}
execute if score spellbinding Temp matches 1 run data modify storage exigence:colors name_cost set from storage exigence:resources full_cost_2
#data modify storage exigence:colors name_cost set from storage exigence:resources full_cost_2



# Summon blank card
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["CardSummon","NCS"]}

# Apply data to the card
$execute as @e[distance=..1,type=item,tag=NCS] run function exigence:cards/$(card_name)/summon with storage exigence:colors
