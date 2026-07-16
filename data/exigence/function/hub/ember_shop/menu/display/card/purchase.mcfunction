# Called when player clicks on a displaying card display

## CONSTRAINTS
#   AS/AT card display
#   player with tag Interacting

#====================================================================================================

# Called when a player successfully purchased this card

# (Starts animations etc)

# For now... instant
#execute in exigence:hub positioned 51.5 206.0 0.5 run 
function exigence:cards/summon_card with entity @s item.components."minecraft:custom_data"

# Set item origin to player UUID
execute as @p[tag=EmberShop,tag=Interacting,distance=..16] run data modify entity @n[type=minecraft:item,tag=NCS,distance=..0.1] Owner set from entity @s UUID
# Teleport item to player
execute as @n[type=minecraft:item,tag=NCS,distance=..0.1] at @s run tp @s @p[tag=EmberShop,tag=Interacting,distance=..16]

# Reduce score (if not creative)
execute unless entity @p[tag=Interacting,gamemode=creative] run scoreboard players operation shop.embers_to_spend ember_shop -= @s ember_shop.cost

# Update bossbar
function exigence:bossbar/ember_shop/update
